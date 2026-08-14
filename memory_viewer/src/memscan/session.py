# Session management for memory scanner

import json
from typing import Dict, Any, List, Optional
from src.memscan.models import ScanSession, ScanCandidate

class SessionManager:
    def __init__(self):
        self.session: Optional[ScanSession] = None
        self.history: List[Dict[str, Any]] = [] # For next scan undo capability if needed
        self.config: Dict[str, Any] = {
            "unaligned": False,
            "protection": "r--",
            "writableOnly": True
        }

    def start_session(self, pid: int, name: str, arch: str, ptr_size: int) -> ScanSession:
        self.session = ScanSession(
            pid=pid,
            process_name=name,
            arch=arch,
            pointer_size=ptr_size,
            data_type=None,
            candidate_count=0
        )
        self.history = []
        return self.session

    def end_session(self) -> None:
        self.session = None
        self.history = []

    def update_scan(self, data_type: str, count: int) -> None:
        if self.session:
            self.session.data_type = data_type
            self.session.candidate_count = count
            # Push current snapshot to history
            self.history.append({
                "data_type": data_type,
                "candidate_count": count
            })

    def undo_scan(self) -> Optional[Dict[str, Any]]:
        if len(self.history) > 1:
            self.history.pop() # remove current
            prev = self.history[-1]
            if self.session:
                self.session.candidate_count = prev["candidate_count"]
                self.session.data_type = prev["data_type"]
            return prev
        return None

    def export_session_json(self) -> str:
        if not self.session:
            return "{}"
        return json.dumps({
            "pid": self.session.pid,
            "process_name": self.session.process_name,
            "arch": self.session.arch,
            "pointer_size": self.session.pointer_size,
            "data_type": self.session.data_type,
            "candidate_count": self.session.candidate_count,
            "config": self.config
        }, indent=4)
