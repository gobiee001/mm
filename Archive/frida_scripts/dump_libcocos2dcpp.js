const moduleName = "libcocos2dcpp.so";
const dumpSymbols = true;
const maxImports = 500;
const maxExports = 1000;

function printList(title, items, formatter, limit) {
  console.log("\n[" + title + "] count=" + items.length);
  const max = limit || items.length;
  for (let i = 0; i < items.length && i < max; i++) {
    console.log(formatter(items[i], i));
  }
  if (items.length > max) {
    console.log("... truncated, shown " + max + " of " + items.length);
  }
}

function dumpModule() {
  console.log("[0/7] Script started");
  console.log("[1/7] Looking for " + moduleName);

  const mod = Process.findModuleByName(moduleName);
  if (mod === null) {
    console.log("[-] Module not loaded yet: " + moduleName);
    console.log("[*] Try opening the game screen first, then run %reload");
    return;
  }

  console.log("[2/7] Found module");
  console.log("[*] Module: " + mod.name);
  console.log("[*] Path: " + mod.path);
  console.log("[*] Base: " + mod.base);
  console.log("[*] Size: " + mod.size + " bytes / 0x" + mod.size.toString(16));

  console.log("[3/7] Enumerating memory ranges");
  const allRanges = Process.enumerateRangesSync({ protection: "r--", coalesce: true })
    .concat(Process.enumerateRangesSync({ protection: "r-x", coalesce: true }))
    .concat(Process.enumerateRangesSync({ protection: "rw-", coalesce: true }))
    .filter(function (range) {
      return range.base.compare(mod.base) >= 0 &&
        range.base.compare(mod.base.add(mod.size)) < 0;
    })
    .sort(function (a, b) {
      return a.base.compare(b.base);
    });

  printList("Memory ranges", allRanges, function (r) {
    return "  " + r.base + " - " + r.base.add(r.size) + " " + r.protection + " size=0x" + r.size.toString(16);
  });

  console.log("[4/7] Enumerating exports");
  try {
    const exports = Module.enumerateExportsSync(moduleName);
    printList("Exports", exports, function (e) {
      return "  " + e.type + " " + e.address + " " + e.name;
    }, maxExports);
  } catch (e) {
    console.log("[-] Failed to enumerate exports: " + e);
  }

  console.log("[5/7] Enumerating imports");
  try {
    const imports = Module.enumerateImportsSync(moduleName);
    printList("Imports", imports, function (i) {
      return "  " + i.type + " " + i.module + "!" + i.name + " -> " + i.address;
    }, maxImports);
  } catch (e) {
    console.log("[-] Failed to enumerate imports: " + e);
  }

  console.log("[6/7] Symbol dump enabled: " + dumpSymbols);
  if (!dumpSymbols) {
    console.log("[*] Skipping symbols because this can be very slow on large C++ libraries.");
    console.log("[7/7] Done");
    return;
  }

  try {
    console.log("[6/7] Enumerating symbols");
    const symbols = Module.enumerateSymbolsSync(moduleName);
    printList("Symbols", symbols, function (s) {
      return "  " + s.type + " " + s.address + " " + s.name;
    }, 5000);
  } catch (e) {
    console.log("[-] Failed to enumerate symbols, library may be stripped: " + e);
  }

  console.log("[7/7] Done");
}

setImmediate(dumpModule);
