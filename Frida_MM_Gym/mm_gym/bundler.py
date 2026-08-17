"""ES-module bundler for Frida agent scripts.

``session.create_script()`` takes a single flat source string and cannot handle
``import``, so the module tree has to be flattened before it is sent.

This replaces the inliner in ``Frida_finalScripts/run_hook.py``, which has two
defects that both break a real module tree:

1. **No dedup.** If two modules import the same file, its source is inlined
   twice, producing duplicate top-level declarations. With every registry here
   importing ``core/symbols.js``, that fires immediately.

2. **No scoping.** Even with dedup, concatenating modules into one scope collides
   their top-level names -- ``getHP`` is declared by both ``actuators/health.js``
   and ``entities/player.js``, ``isReady`` by both ``core/ccdict.js`` and
   ``core/ccnode.js``, and so on. The result is a hard
   ``SyntaxError: Identifier 'x' has already been declared`` at load.

So each module is emitted exactly once, wrapped in its own IIFE, with imports
rewired to read from the already-built module objects:

.. code-block:: javascript

    var __m0 = (function () {
        // ... core/symbols.js body, `export` stripped ...
        return { resolve: resolve, nf: nf };
    })();

    var __m1 = (function () {
        const nf = __m0.nf;          // import { nf } from "./symbols.js"
        // ... body ...
        return { isReady: isReady };
    })();

Supported syntax (everything the agent uses):

* ``import { a } from "x"``, ``import { a as b } from "x"``, mixed forms
* ``import * as ns from "x"``
* ``import "x"`` (side effects only)
* ``export function f``, ``export const/let/var x``, ``export class C``
* ``export { a, b as c };``

Not supported: default exports, multi-declarator ``export const a = 1, b = 2;``,
and re-export-from (``export { a } from "x"``). None appear in this agent; each
raises :class:`BundleError` rather than silently miscompiling.
"""

from __future__ import annotations

import json
import os
import re
from typing import Iterable, NamedTuple

# import ... from "spec";  /  import "spec";
_IMPORT_STMT_RE = re.compile(
    r'^[ \t]*import\s+'
    r'(?:(?P<clause>\{[^}]*\}|\*\s+as\s+[A-Za-z_$][\w$]*|[A-Za-z_$][\w$]*)\s+from\s+)?'
    r'["\'](?P<spec>[^"\']+)["\']\s*;?[ \t]*$',
    re.MULTILINE,
)

# export function f / export const x / export class C
_EXPORT_DECL_RE = re.compile(
    r'^[ \t]*export\s+(?:async\s+)?(?:function\s*\*?|const|let|var|class)\s+'
    r'(?P<name>[A-Za-z_$][\w$]*)',
    re.MULTILINE,
)

# export { a, b as c };
_EXPORT_LIST_RE = re.compile(
    r'^[ \t]*export\s*\{(?P<names>[^}]*)\}\s*;?[ \t]*$',
    re.MULTILINE,
)

# Anything we refuse to guess at.
_EXPORT_DEFAULT_RE = re.compile(r'^[ \t]*export\s+default\b', re.MULTILINE)
_EXPORT_FROM_RE = re.compile(r'^[ \t]*export\s*\{[^}]*\}\s*from\b', re.MULTILINE)

# Leading `export ` on a declaration line, for stripping.
_EXPORT_KEYWORD_RE = re.compile(r'^([ \t]*)export\s+', re.MULTILINE)


class BundleError(Exception):
    """Raised on an unresolvable import, an import cycle, or unsupported syntax."""


class _Import(NamedTuple):
    spec: str
    #: Namespace binding name, for `import * as ns`.
    namespace: str | None
    #: (imported_name, local_name) pairs, for `import { a as b }`.
    named: tuple[tuple[str, str], ...]


def _parse_imports(code: str, where: str) -> list[_Import]:
    out: list[_Import] = []
    for m in _IMPORT_STMT_RE.finditer(code):
        spec = m.group("spec")
        clause = m.group("clause")

        if clause is None:
            out.append(_Import(spec, None, ()))
            continue

        clause = clause.strip()

        if clause.startswith("*"):
            ns = clause.split("as", 1)[1].strip()
            out.append(_Import(spec, ns, ()))
            continue

        if clause.startswith("{"):
            named: list[tuple[str, str]] = []
            for part in clause[1:-1].split(","):
                part = part.strip()
                if not part:
                    continue
                if " as " in part:
                    imported, local = (s.strip() for s in part.split(" as ", 1))
                else:
                    imported = local = part
                named.append((imported, local))
            out.append(_Import(spec, None, tuple(named)))
            continue

        raise BundleError(
            f"{where}: default imports are not supported (`import {clause} from ...`)"
        )
    return out


def _parse_exports(code: str, where: str) -> list[tuple[str, str]]:
    """Return (local_name, exported_name) pairs."""
    if _EXPORT_DEFAULT_RE.search(code):
        raise BundleError(f"{where}: `export default` is not supported")
    if _EXPORT_FROM_RE.search(code):
        raise BundleError(f"{where}: `export {{ ... }} from ...` is not supported")

    pairs: list[tuple[str, str]] = []
    seen: set[str] = set()

    for m in _EXPORT_DECL_RE.finditer(code):
        name = m.group("name")
        if name not in seen:
            seen.add(name)
            pairs.append((name, name))

    for m in _EXPORT_LIST_RE.finditer(code):
        for part in m.group("names").split(","):
            part = part.strip()
            if not part:
                continue
            if " as " in part:
                local, exported = (s.strip() for s in part.split(" as ", 1))
            else:
                local = exported = part
            if exported not in seen:
                seen.add(exported)
                pairs.append((local, exported))

    return pairs


def _strip_module_syntax(code: str) -> str:
    code = _IMPORT_STMT_RE.sub("", code)
    code = _EXPORT_LIST_RE.sub("", code)
    code = _EXPORT_KEYWORD_RE.sub(r"\1", code)
    return code


class _Bundler:
    def __init__(self, entry: str) -> None:
        self.entry = os.path.abspath(entry)
        self.root = os.path.dirname(self.entry)
        self.ids: dict[str, str] = {}      # realpath -> JS module var name
        self.stack: list[str] = []
        self.chunks: list[str] = []
        self.order: list[str] = []

    def _resolve(self, importer: str, spec: str) -> str:
        base = os.path.dirname(importer)
        candidates = [os.path.join(base, spec), os.path.join(self.root, spec)]
        if not spec.endswith(".js"):
            candidates += [c + ".js" for c in list(candidates)]

        for c in candidates:
            real = os.path.realpath(c)
            if os.path.isfile(real):
                return real

        tried = "\n         ".join(os.path.realpath(c) for c in candidates)
        raise BundleError(
            f"cannot resolve import {spec!r} from {importer!r}\n  tried: {tried}"
        )

    def _visit(self, path: str) -> str:
        real = os.path.realpath(path)

        existing = self.ids.get(real)
        if existing is not None:
            return existing

        if real in self.stack:
            chain = " -> ".join(os.path.basename(p) for p in self.stack + [real])
            raise BundleError(f"import cycle detected: {chain}")

        try:
            with open(real, "r", encoding="utf-8") as fh:
                code = fh.read()
        except OSError as exc:
            raise BundleError(f"cannot read {real}: {exc}") from exc

        rel = os.path.relpath(real, self.root).replace("\\", "/")
        imports = _parse_imports(code, rel)
        exports = _parse_exports(code, rel)

        # Depth-first: every dependency is emitted (and gets its id) first.
        self.stack.append(real)
        dep_ids: dict[str, str] = {}
        for imp in imports:
            dep_ids[imp.spec] = self._visit(self._resolve(real, imp.spec))
        self.stack.pop()

        # A diamond may have emitted us while we walked our children.
        existing = self.ids.get(real)
        if existing is not None:
            return existing

        mod_id = f"__m{len(self.order)}"
        self.ids[real] = mod_id
        self.order.append(real)

        # Rewire imports to reads off the dependency's module object.
        binding_lines: list[str] = []
        for imp in imports:
            dep = dep_ids[imp.spec]
            if imp.namespace is not None:
                binding_lines.append(f"    var {imp.namespace} = {dep};")
            for imported, local in imp.named:
                binding_lines.append(f"    var {local} = {dep}.{imported};")

        body = _strip_module_syntax(code).strip()

        if exports:
            fields = ", ".join(f"{exported}: {local}" for local, exported in exports)
            return_line = f"    return {{ {fields} }};"
        else:
            return_line = "    return {};"

        parts = [f"// ===== begin {rel} ({mod_id}) ====="]
        parts.append(f"var {mod_id} = (function () {{")
        if binding_lines:
            parts.extend(binding_lines)
        parts.append(body)
        parts.append(return_line)
        parts.append("})();")
        parts.append(f"// ===== end {rel} =====")

        self.chunks.append("\n".join(parts))
        return mod_id

    def build(self) -> str:
        if not os.path.isfile(self.entry):
            raise BundleError(f"entry script not found: {self.entry}")
        self._visit(self.entry)
        return "\n\n".join(self.chunks) + "\n"


def bundle(entry: str) -> str:
    """Flatten ``entry`` and everything it imports into one script."""
    return _Bundler(entry).build()


def bundle_with_order(entry: str) -> tuple[str, list[str]]:
    """Like :func:`bundle`, but also returns the module emission order.

    Lets you verify dedup and ordering offline, with no device attached --
    see ``run_gym.py --dump-bundle``.
    """
    b = _Bundler(entry)
    code = b.build()
    return code, list(b.order)


def make_prelude(config: dict, extra: Iterable[str] = ()) -> str:
    """Build the config prelude prepended to the bundle.

    Injecting the config as a literal avoids a ``recv()`` handshake at load time,
    which preserves the invariant that the agent never asynchronously requests
    anything.
    """
    lines = [
        "// ===== injected by mm_gym =====",
        "var GYM_CONFIG = " + json.dumps(config, separators=(",", ":")) + ";",
    ]
    lines.extend(extra)
    lines.append("// ===== end injected =====")
    return "\n".join(lines) + "\n\n"
