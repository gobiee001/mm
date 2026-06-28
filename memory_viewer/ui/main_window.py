import logging
from typing import List, Dict, Tuple, Optional
from PySide6.QtWidgets import (
    QMainWindow, QWidget, QVBoxLayout, QHBoxLayout, QGridLayout,
    QLabel, QLineEdit, QPushButton, QComboBox, QTableWidget,
    QTableWidgetItem, QGroupBox, QRadioButton, QButtonGroup,
    QMessageBox, QSplitter, QListWidget, QStatusBar, QHeaderView,
    QAbstractItemView, QCheckBox, QSpinBox
)
from PySide6.QtCore import Qt, Slot, QObject, Signal, QTimer
from PySide6.QtGui import QFont, QIcon

from frida_backend.reader import FridaMemoryReader
from ui.hex_view import HexViewWidget
from utils.formatter import format_hex_line, format_size
from models.memory_region import MemoryRegion

logger = logging.getLogger("MainWindow")

class FridaSignalBridge(QObject):
    # Signals to safely communicate from Frida thread to Qt GUI thread
    detached = Signal(str, str)

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Antigravity Frida Memory Viewer")
        self.resize(1100, 750)
        
        # State
        self.reader = FridaMemoryReader()
        self.current_address = 0
        self.current_size = 1024
        self.attached_modules = []
        self.last_data = None
        self.last_read_address = None
        self.last_read_size = None
        
        # Auto Update Timer
        self.auto_update_timer = QTimer(self)
        self.auto_update_timer.timeout.connect(self.refresh_memory)
        
        # Signal bridge for thread safety
        self.bridge = FridaSignalBridge()
        self.bridge.detached.connect(self.on_process_detached)
        self.reader.on_detached_callback = self.trigger_detached_signal
        
        # UI Setup
        self.setup_ui()
        self.apply_theme()
        
        # Initialize UI states
        self.update_connection_mode()
        self.set_ui_attached_state(False)

    def trigger_detached_signal(self, name, reason):
        self.bridge.detached.emit(name, str(reason))

    @Slot(str, str)
    def on_process_detached(self, name, reason):
        # Stop auto-update timer
        self.auto_update_timer.stop()
        self.chk_auto_update.setChecked(False)
        
        QMessageBox.critical(
            self, 
            "Process Detached", 
            f"Lost connection to target process: {name}\nReason: {reason}"
        )
        self.set_ui_attached_state(False)
        self.hex_viewer.clear()
        self.modules_table.setRowCount(0)
        self.module_combo.clear()
        self.region_base_val.setText("-")
        self.region_size_val.setText("-")
        self.region_prot_val.setText("-")
        self.statusBar().showMessage("Disconnected.")

    def setup_ui(self):
        # Central widget
        central_widget = QWidget(self)
        self.setCentralWidget(central_widget)
        
        main_layout = QVBoxLayout(central_widget)
        main_layout.setContentsMargins(10, 10, 10, 10)
        main_layout.setSpacing(10)
        
        # ==================== 1. Connection & Process Selection ====================
        conn_group = QGroupBox("Frida Connection & Process Selection", self)
        conn_layout = QHBoxLayout(conn_group)
        conn_layout.setSpacing(15)
        
        # Mode Selection
        mode_layout = QVBoxLayout()
        self.local_radio = QRadioButton("Local Device", self)
        self.local_radio.setChecked(True)
        self.local_radio.toggled.connect(self.update_connection_mode)
        self.remote_radio = QRadioButton("Remote Host", self)
        self.remote_radio.toggled.connect(self.update_connection_mode)
        mode_layout.addWidget(self.local_radio)
        mode_layout.addWidget(self.remote_radio)
        conn_layout.addLayout(mode_layout)
        
        # Host Input
        host_layout = QVBoxLayout()
        host_layout.addWidget(QLabel("Remote Host IP:Port", self))
        self.host_input = QLineEdit("127.0.0.1:27042", self)
        self.host_input.setPlaceholderText("e.g. 127.0.0.1:27042")
        host_layout.addWidget(self.host_input)
        conn_layout.addLayout(host_layout)
        
        # Refresh Processes Button
        self.btn_refresh_processes = QPushButton("Enumerate Processes", self)
        self.btn_refresh_processes.clicked.connect(self.refresh_processes)
        conn_layout.addWidget(self.btn_refresh_processes)
        
        # Process Dropdown
        proc_layout = QVBoxLayout()
        proc_layout.addWidget(QLabel("Running Processes", self))
        self.process_combo = QComboBox(self)
        self.process_combo.setMinimumWidth(250)
        proc_layout.addWidget(self.process_combo)
        conn_layout.addLayout(proc_layout)
        
        # Attach Button
        self.btn_attach = QPushButton("Attach", self)
        self.btn_attach.clicked.connect(self.attach_process)
        conn_layout.addWidget(self.btn_attach)
        
        # Detach Button
        self.btn_detach = QPushButton("Detach", self)
        self.btn_detach.clicked.connect(self.detach_process)
        conn_layout.addWidget(self.btn_detach)
        
        # Manual PID Attachment
        manual_layout = QVBoxLayout()
        manual_layout.addWidget(QLabel("Manual PID", self))
        self.pid_input = QLineEdit(self)
        self.pid_input.setPlaceholderText("PID (dec)")
        manual_layout.addWidget(self.pid_input)
        conn_layout.addLayout(manual_layout)
        
        self.btn_attach_pid = QPushButton("Attach PID", self)
        self.btn_attach_pid.clicked.connect(self.attach_pid)
        conn_layout.addWidget(self.btn_attach_pid)
        
        main_layout.addWidget(conn_group)
        
        # ==================== 2. Main Workspace Splitter ====================
        workspace_splitter = QSplitter(Qt.Horizontal, self)
        
        # Left Panel: Modules
        modules_group = QGroupBox("Modules", self)
        modules_layout = QVBoxLayout(modules_group)
        
        self.module_filter_input = QLineEdit(self)
        self.module_filter_input.setPlaceholderText("Filter modules...")
        self.module_filter_input.textChanged.connect(self.filter_modules)
        modules_layout.addWidget(self.module_filter_input)
        
        self.modules_table = QTableWidget(self)
        self.modules_table.setColumnCount(3)
        self.modules_table.setHorizontalHeaderLabels(["Module Name", "Base Address", "Size"])
        self.modules_table.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)
        self.modules_table.setSelectionBehavior(QAbstractItemView.SelectRows)
        self.modules_table.setSelectionMode(QAbstractItemView.SingleSelection)
        self.modules_table.setEditTriggers(QAbstractItemView.NoEditTriggers)
        self.modules_table.doubleClicked.connect(self.on_module_double_clicked)
        modules_layout.addWidget(self.modules_table)
        
        workspace_splitter.addWidget(modules_group)
        
        # Right Panel: Memory Controls, Hex View, Region Info, Search
        right_panel = QWidget(self)
        right_layout = QVBoxLayout(right_panel)
        right_layout.setContentsMargins(0, 0, 0, 0)
        right_layout.setSpacing(10)
        
        # Memory Controls
        controls_group = QGroupBox("Memory Controls", self)
        controls_grid = QGridLayout(controls_group)
        controls_grid.setSpacing(10)
        
        # Offset Navigation Layout
        controls_grid.addWidget(QLabel("Relative Module:", self), 0, 0)
        self.module_combo = QComboBox(self)
        self.module_combo.currentIndexChanged.connect(self.on_module_combo_changed)
        controls_grid.addWidget(self.module_combo, 0, 1)
        
        controls_grid.addWidget(QLabel("Offset (Hex/Dec):", self), 0, 2)
        self.offset_input = QLineEdit("0x0", self)
        controls_grid.addWidget(self.offset_input, 0, 3)
        
        # Absolute Address
        controls_grid.addWidget(QLabel("Absolute Address:", self), 1, 0)
        self.abs_address_input = QLineEdit(self)
        self.abs_address_input.setPlaceholderText("e.g. 0x70000000")
        controls_grid.addWidget(self.abs_address_input, 1, 1)
        
        # Read Size
        controls_grid.addWidget(QLabel("Read Size (bytes):", self), 1, 2)
        self.size_combo = QComboBox(self)
        self.size_combo.addItems(["256", "512", "1024", "4096"])
        self.size_combo.setCurrentText("1024")
        self.size_combo.currentIndexChanged.connect(self.update_read_size)
        controls_grid.addWidget(self.size_combo, 1, 3)
        
        # Buttons
        self.btn_read = QPushButton("Read Memory", self)
        self.btn_read.clicked.connect(self.read_memory_triggered)
        controls_grid.addWidget(self.btn_read, 0, 4)
        
        self.btn_refresh = QPushButton("Refresh", self)
        self.btn_refresh.clicked.connect(self.refresh_memory)
        controls_grid.addWidget(self.btn_refresh, 1, 4)

        # Auto Update Controls
        self.chk_auto_update = QCheckBox("Auto Update", self)
        self.chk_auto_update.stateChanged.connect(self.toggle_auto_update)
        controls_grid.addWidget(self.chk_auto_update, 2, 0)

        controls_grid.addWidget(QLabel("Interval (ms):", self), 2, 1)
        self.interval_spin = QSpinBox(self)
        self.interval_spin.setRange(100, 10000)
        self.interval_spin.setValue(1000)
        self.interval_spin.setSingleStep(100)
        self.interval_spin.valueChanged.connect(self.update_timer_interval)
        controls_grid.addWidget(self.interval_spin, 2, 2)
        
        right_layout.addWidget(controls_group)
        
        # Hex Viewer Component
        hex_group = QGroupBox("Memory Hex Viewer", self)
        hex_layout = QVBoxLayout(hex_group)
        
        self.hex_viewer = HexViewWidget(self)
        hex_layout.addWidget(self.hex_viewer)
        
        # Hex View Navigation Controls
        nav_layout = QHBoxLayout()
        self.btn_prev_page = QPushButton("<< Previous Page", self)
        self.btn_prev_page.clicked.connect(self.prev_page)
        nav_layout.addWidget(self.btn_prev_page)
        
        self.current_addr_label = QLabel("Address: 0x00000000", self)
        self.current_addr_label.setAlignment(Qt.AlignCenter)
        self.current_addr_label.setFont(QFont("Consolas", 10, QFont.Bold))
        nav_layout.addWidget(self.current_addr_label)
        
        self.btn_next_page = QPushButton("Next Page >>", self)
        self.btn_next_page.clicked.connect(self.next_page)
        nav_layout.addWidget(self.btn_next_page)
        
        # Jump address
        nav_layout.addWidget(QLabel("Jump to Address:", self))
        self.jump_input = QLineEdit(self)
        self.jump_input.setPlaceholderText("Hex/Dec")
        nav_layout.addWidget(self.jump_input)
        
        self.btn_jump = QPushButton("Jump", self)
        self.btn_jump.clicked.connect(self.jump_to_address)
        nav_layout.addWidget(self.btn_jump)
        
        hex_layout.addLayout(nav_layout)
        right_layout.addWidget(hex_group)
        
        # Bottom row inside Right layout: Region Info and Search
        bottom_splitter = QSplitter(Qt.Horizontal, self)
        
        # Region info panel
        region_group = QGroupBox("Memory Region Information", self)
        region_grid = QGridLayout(region_group)
        region_grid.addWidget(QLabel("Region Base Address:", self), 0, 0)
        self.region_base_val = QLabel("-", self)
        region_grid.addWidget(self.region_base_val, 0, 1)
        
        region_grid.addWidget(QLabel("Region Size:", self), 1, 0)
        self.region_size_val = QLabel("-", self)
        region_grid.addWidget(self.region_size_val, 1, 1)
        
        region_grid.addWidget(QLabel("Protection / Perms:", self), 2, 0)
        self.region_prot_val = QLabel("-", self)
        region_grid.addWidget(self.region_prot_val, 2, 1)
        
        bottom_splitter.addWidget(region_group)
        
        # Search panel
        search_group = QGroupBox("Search Module Memory", self)
        search_layout = QVBoxLayout(search_group)
        
        search_inputs = QHBoxLayout()
        search_inputs.addWidget(QLabel("Pattern:", self))
        self.search_pattern = QLineEdit(self)
        self.search_pattern.setPlaceholderText("e.g. 48 65 6c or Player")
        search_inputs.addWidget(self.search_pattern)
        
        self.search_hex_radio = QRadioButton("Hex", self)
        self.search_hex_radio.setChecked(True)
        self.search_ascii_radio = QRadioButton("ASCII", self)
        search_inputs.addWidget(self.search_hex_radio)
        search_inputs.addWidget(self.search_ascii_radio)
        
        self.btn_search = QPushButton("Search", self)
        self.btn_search.clicked.connect(self.search_memory)
        search_inputs.addWidget(self.btn_search)
        search_layout.addLayout(search_inputs)
        
        self.search_results_list = QListWidget(self)
        self.search_results_list.itemDoubleClicked.connect(self.on_search_result_clicked)
        search_layout.addWidget(self.search_results_list)
        
        bottom_splitter.addWidget(search_group)
        right_layout.addWidget(bottom_splitter)
        
        workspace_splitter.addWidget(right_panel)
        workspace_splitter.setSizes([300, 800])
        main_layout.addWidget(workspace_splitter)
        
        # Status Bar
        self.setStatusBar(QStatusBar(self))
        self.statusBar().showMessage("Ready.")

    def apply_theme(self):
        # A sleek dark theme with curated modern colors (glassmorphism/dark mode feel)
        self.setStyleSheet("""
            QMainWindow {
                background-color: #121212;
            }
            QWidget {
                color: #e0e0e0;
                font-family: 'Segoe UI', Arial, sans-serif;
                font-size: 12px;
            }
            QGroupBox {
                border: 1px solid #2d2d2d;
                border-radius: 6px;
                margin-top: 12px;
                font-weight: bold;
                color: #3f8bfd;
            }
            QGroupBox::title {
                subcontrol-origin: margin;
                subcontrol-position: top left;
                left: 10px;
                padding: 0 5px;
            }
            QPushButton {
                background-color: #1a1a1a;
                border: 1px solid #333333;
                border-radius: 4px;
                color: #ffffff;
                padding: 5px 12px;
            }
            QPushButton:hover {
                background-color: #262626;
                border-color: #3f8bfd;
            }
            QPushButton:pressed {
                background-color: #3f8bfd;
                color: #000000;
            }
            QPushButton:disabled {
                background-color: #0c0c0c;
                color: #555555;
                border-color: #1d1d1d;
            }
            QLineEdit, QComboBox {
                background-color: #1a1a1a;
                border: 1px solid #333333;
                border-radius: 4px;
                color: #ffffff;
                padding: 4px;
            }
            QLineEdit:focus, QComboBox:focus {
                border-color: #3f8bfd;
            }
            QLineEdit:disabled, QComboBox:disabled {
                background-color: #0c0c0c;
                color: #555555;
            }
            QTableWidget {
                background-color: #181818;
                gridline-color: #2d2d2d;
                color: #e0e0e0;
                border: 1px solid #2d2d2d;
                border-radius: 4px;
            }
            QTableWidget::item:selected {
                background-color: #264f78;
                color: #ffffff;
            }
            QHeaderView::section {
                background-color: #202020;
                color: #a0a0a0;
                padding: 6px;
                border: 1px solid #2d2d2d;
                font-weight: bold;
            }
            QListWidget {
                background-color: #181818;
                border: 1px solid #2d2d2d;
                color: #e0e0e0;
                border-radius: 4px;
            }
            QListWidget::item:hover {
                background-color: #222222;
            }
            QListWidget::item:selected {
                background-color: #264f78;
                color: #ffffff;
            }
            QRadioButton {
                spacing: 5px;
            }
            QRadioButton::indicator {
                width: 14px;
                height: 14px;
            }
            QStatusBar {
                background-color: #1a1a1a;
                color: #888888;
                border-top: 1px solid #2d2d2d;
            }
            QLabel {
                color: #b0b0b0;
            }
        """)

    def update_connection_mode(self):
        is_remote = self.remote_radio.isChecked()
        self.host_input.setEnabled(is_remote)
        if not is_remote:
            self.statusBar().showMessage("Local connection mode selected.")
        else:
            self.statusBar().showMessage("Remote connection mode selected. Configure Host IP/Port.")

    def set_ui_attached_state(self, attached: bool):
        self.btn_attach.setEnabled(not attached)
        self.btn_attach_pid.setEnabled(not attached)
        self.process_combo.setEnabled(not attached)
        self.pid_input.setEnabled(not attached)
        self.host_input.setEnabled(not attached and self.remote_radio.isChecked())
        self.local_radio.setEnabled(not attached)
        self.remote_radio.setEnabled(not attached)
        self.btn_refresh_processes.setEnabled(not attached)
        
        self.btn_detach.setEnabled(attached)
        self.btn_read.setEnabled(attached)
        self.btn_refresh.setEnabled(attached)
        self.btn_prev_page.setEnabled(attached)
        self.btn_next_page.setEnabled(attached)
        self.btn_jump.setEnabled(attached)
        self.btn_search.setEnabled(attached)
        self.module_combo.setEnabled(attached)
        self.offset_input.setEnabled(attached)
        self.abs_address_input.setEnabled(attached)
        self.size_combo.setEnabled(attached)
        self.jump_input.setEnabled(attached)
        self.search_pattern.setEnabled(attached)
        self.search_hex_radio.setEnabled(attached)
        self.search_ascii_radio.setEnabled(attached)
        
        self.chk_auto_update.setEnabled(attached)
        self.interval_spin.setEnabled(attached)
        
        if not attached:
            self.auto_update_timer.stop()
            self.chk_auto_update.setChecked(False)
            self.modules_table.setRowCount(0)
            self.module_combo.clear()
            self.search_results_list.clear()

    def parse_address(self, text: str) -> Optional[int]:
        text = text.strip()
        if not text:
            return None
        # Try parsing hex prefix
        if text.lower().startswith("0x"):
            try:
                return int(text, 16)
            except ValueError:
                return None
        # Try to parse base 16 (often addresses are entered without 0x prefix)
        try:
            return int(text, 16)
        except ValueError:
            # Fallback to decimal
            try:
                return int(text, 10)
            except ValueError:
                return None

    def refresh_processes(self):
        self.process_combo.clear()
        
        remote_host = self.host_input.text().strip() if self.remote_radio.isChecked() else None
        
        try:
            self.reader.set_device(remote_host)
            processes = self.reader.get_processes()
            
            # Sort alphabetically by name
            processes.sort(key=lambda x: x["name"].lower())
            
            for p in processes:
                # ComboBox items display "name (PID: pid)" and store pid in item data
                self.process_combo.addItem(f"{p['name']} (PID: {p['pid']})", p["pid"])
                
            self.statusBar().showMessage(f"Loaded {len(processes)} processes.")
        except Exception as e:
            QMessageBox.critical(self, "Frida Connection Error", f"Could not enumerate processes:\n{e}")
            self.statusBar().showMessage("Connection failed.")

    def attach_process(self):
        if self.process_combo.currentIndex() < 0:
            QMessageBox.warning(self, "Attach Error", "Please select a process from the list first.")
            return
            
        pid = self.process_combo.currentData()
        self.perform_attach(pid)

    def attach_pid(self):
        pid_text = self.pid_input.text().strip()
        if not pid_text:
            QMessageBox.warning(self, "Attach Error", "Please enter a valid PID.")
            return
            
        try:
            pid = int(pid_text)
        except ValueError:
            QMessageBox.warning(self, "Attach Error", "PID must be a valid decimal integer.")
            return
            
        self.perform_attach(pid)

    def perform_attach(self, pid: int):
        remote_host = self.host_input.text().strip() if self.remote_radio.isChecked() else None
        try:
            # Ensure device manager configured
            self.reader.set_device(remote_host)
            self.reader.attach(pid)
            
            self.statusBar().showMessage(f"Attached to process ID: {pid}")
            self.set_ui_attached_state(True)
            
            # Populate modules list
            self.load_modules()
        except Exception as e:
            QMessageBox.critical(self, "Attachment Failed", f"Could not attach to process {pid}:\n{e}")
            self.set_ui_attached_state(False)

    def detach_process(self):
        try:
            self.reader.detach()
            self.statusBar().showMessage("Disconnected.")
        except Exception as e:
            logger.error(f"Error detaching: {e}")
        self.set_ui_attached_state(False)
        self.hex_viewer.clear()

    def load_modules(self):
        self.modules_table.setRowCount(0)
        self.module_combo.clear()
        self.module_combo.addItem("None (Use Absolute Address)", None)
        
        try:
            self.attached_modules = self.reader.enumerate_modules()
            # Sort by name
            self.attached_modules.sort(key=lambda x: x["name"].lower())
            
            self.modules_table.setRowCount(len(self.attached_modules))
            for i, m in enumerate(self.attached_modules):
                base_addr = int(m["base"], 10) if m["base"].isdigit() else int(m["base"], 16)
                
                # Base address formatted in hex
                base_str = f"0x{base_addr:X}"
                size_str = format_size(m["size"])
                
                self.modules_table.setItem(i, 0, QTableWidgetItem(m["name"]))
                self.modules_table.setItem(i, 1, QTableWidgetItem(base_str))
                self.modules_table.setItem(i, 2, QTableWidgetItem(size_str))
                
                self.module_combo.addItem(m["name"], base_addr)
                
            self.statusBar().showMessage(f"Attached. Loaded {len(self.attached_modules)} modules.")
        except Exception as e:
            QMessageBox.warning(self, "Modules Enumeration", f"Failed to enumerate modules:\n{e}")

    def filter_modules(self, text):
        query = text.strip().lower()
        for i in range(self.modules_table.rowCount()):
            name_item = self.modules_table.item(i, 0)
            if name_item:
                name = name_item.text().lower()
                self.modules_table.setRowHidden(i, query not in name)

    def on_module_double_clicked(self, index):
        row = index.row()
        module_name = self.modules_table.item(row, 0).text()
        base_addr_str = self.modules_table.item(row, 1).text()
        
        # Set absolute address input to base
        self.abs_address_input.setText(base_addr_str)
        self.offset_input.setText("0x0")
        
        # Select in combo
        combo_index = self.module_combo.findText(module_name)
        if combo_index >= 0:
            self.module_combo.setCurrentIndex(combo_index)
            
        addr = self.parse_address(base_addr_str)
        if addr is not None:
            self.current_address = addr
            self.read_and_display_memory()

    def on_module_combo_changed(self, index):
        # If user selects a module, we make offset field relevant
        base_addr = self.module_combo.currentData()
        if base_addr is not None:
            # We calculate current address based on module + offset
            offset = self.parse_address(self.offset_input.text()) or 0
            abs_addr = base_addr + offset
            self.abs_address_input.setText(f"0x{abs_addr:X}")
        else:
            self.offset_input.setText("0x0")

    def update_read_size(self):
        try:
            self.current_size = int(self.size_combo.currentText())
        except ValueError:
            self.current_size = 1024

    def read_memory_triggered(self):
        # Determine address to read
        base_addr = self.module_combo.currentData()
        if base_addr is not None:
            offset = self.parse_address(self.offset_input.text())
            if offset is None:
                QMessageBox.warning(self, "Invalid Input", "Invalid offset value.")
                return
            self.current_address = base_addr + offset
            self.abs_address_input.setText(f"0x{self.current_address:X}")
        else:
            addr = self.parse_address(self.abs_address_input.text())
            if addr is None:
                QMessageBox.warning(self, "Invalid Input", "Invalid absolute address value.")
                return
            self.current_address = addr
            
        self.read_and_display_memory()

    def refresh_memory(self):
        self.read_and_display_memory()

    def read_and_display_memory(self):
        if not self.reader.session:
            return
            
        self.statusBar().showMessage(f"Reading memory at 0x{self.current_address:X}...")
        self.current_addr_label.setText(f"Address: 0x{self.current_address:08X}")
        
        try:
            # 1. Read memory block
            data = self.reader.read_memory(self.current_address, self.current_size)
            
            # Compare with last read data
            compare_data = None
            if (self.last_read_address == self.current_address and 
                    self.last_read_size == self.current_size and 
                    self.last_data is not None and 
                    len(self.last_data) == len(data)):
                compare_data = self.last_data
                
            # 2. Format data for display using HTML with difference highlighting
            html_lines = []
            for i in range(0, len(data), 16):
                row_addr = self.current_address + i
                row_data = data[i : i + 16]
                row_old_data = compare_data[i : i + 16] if compare_data is not None else None
                
                addr_str = f"0x{row_addr:08X}"
                
                hex_parts = []
                ascii_parts = []
                
                for idx, b in enumerate(row_data):
                    # Check if byte changed
                    changed = False
                    if row_old_data is not None and idx < len(row_old_data):
                        if b != row_old_data[idx]:
                            changed = True
                            
                    hex_val = f"{b:02X}"
                    ascii_char = chr(b) if 32 <= b <= 126 else "."
                    
                    # HTML Escape special chars
                    if ascii_char == "<":
                        ascii_char = "&lt;"
                    elif ascii_char == ">":
                        ascii_char = "&gt;"
                    elif ascii_char == "&":
                        ascii_char = "&amp;"
                        
                    if changed:
                        hex_parts.append(f'<font color="#ff4d4d"><b>{hex_val}</b></font>')
                        ascii_parts.append(f'<font color="#ff4d4d"><b>{ascii_char}</b></font>')
                    else:
                        hex_parts.append(hex_val)
                        ascii_parts.append(ascii_char)
                
                # Padding for aligned spacing
                if len(row_data) < 16:
                    missing = 16 - len(row_data)
                    hex_parts.extend(["  "] * missing)
                    ascii_parts.extend([" "] * missing)
                    
                hex_str = " ".join(hex_parts)
                ascii_str = "".join(ascii_parts)
                
                html_lines.append(f"{addr_str}  {hex_str}  {ascii_str}")
                
            self.hex_viewer.set_hex_data_html("\n".join(html_lines))
            self.statusBar().showMessage(f"Successfully read {len(data)} bytes.")
            
            # Save state for comparison
            self.last_data = data
            self.last_read_address = self.current_address
            self.last_read_size = self.current_size
            
            # 3. Retrieve and display region info
            self.update_region_info()
            
        except Exception as e:
            self.hex_viewer.clear()
            self.statusBar().showMessage("Read error.")
            
            # Clear region details
            self.region_base_val.setText("-")
            self.region_size_val.setText("-")
            self.region_prot_val.setText("-")
            
            # Stop timer and uncheck if auto update was active to prevent error popup loops
            if self.chk_auto_update.isChecked():
                self.auto_update_timer.stop()
                self.chk_auto_update.setChecked(False)
                self.statusBar().showMessage(f"Auto Update stopped due to error: {e}")
            else:
                QMessageBox.critical(
                    self, 
                    "Memory Read Error", 
                    f"Cannot read memory at address 0x{self.current_address:X}.\nDetails: {e}"
                )

    def update_region_info(self):
        info = self.reader.get_region_info(self.current_address)
        if info:
            base_addr = int(info["base"], 10) if info["base"].isdigit() else int(info["base"], 16)
            self.region_base_val.setText(f"0x{base_addr:X}")
            self.region_size_val.setText(format_size(info["size"]))
            self.region_prot_val.setText(info["protection"])
        else:
            self.region_base_val.setText("Unknown")
            self.region_size_val.setText("Unknown")
            self.region_prot_val.setText("Unmapped/No perms")

    def prev_page(self):
        self.current_address -= self.current_size
        if self.current_address < 0:
            self.current_address = 0
        self.abs_address_input.setText(f"0x{self.current_address:X}")
        self.read_and_display_memory()

    def next_page(self):
        self.current_address += self.current_size
        self.abs_address_input.setText(f"0x{self.current_address:X}")
        self.read_and_display_memory()

    def jump_to_address(self):
        addr_text = self.jump_input.text().strip()
        if not addr_text:
            return
            
        addr = self.parse_address(addr_text)
        if addr is None:
            QMessageBox.warning(self, "Invalid Address", "Could not parse target jump address.")
            return
            
        self.current_address = addr
        self.abs_address_input.setText(f"0x{self.current_address:X}")
        # Clear relative combobox so user knows they are viewing absolute address
        self.module_combo.setCurrentIndex(0)
        self.offset_input.setText("0x0")
        
        self.read_and_display_memory()

    def search_memory(self):
        self.search_results_list.clear()
        pattern = self.search_pattern.text().strip()
        if not pattern:
            QMessageBox.warning(self, "Search Error", "Please specify a search pattern.")
            return
            
        # Get active module
        module_name = self.module_combo.currentText()
        if not module_name or self.module_combo.currentData() is None:
            QMessageBox.warning(self, "Search Error", "Memory search is performed within a loaded module.\nPlease double-click a module from the left list first.")
            return
            
        is_hex = self.search_hex_radio.isChecked()
        self.statusBar().showMessage(f"Scanning module {module_name} for '{pattern}'...")
        
        try:
            results = self.reader.search_memory(module_name, pattern, is_hex)
            
            for res in results:
                self.search_results_list.addItem(f"0x{res:X}" if isinstance(res, int) else res)
                
            self.statusBar().showMessage(f"Scan complete. Found {len(results)} matches.")
            if not results:
                QMessageBox.information(self, "Search Results", "No matches found in module.")
        except Exception as e:
            QMessageBox.critical(self, "Search Failed", f"Error during scanning memory:\n{e}")
            self.statusBar().showMessage("Scan failed.")

    def on_search_result_clicked(self, item):
        addr_text = item.text()
        addr = self.parse_address(addr_text)
        if addr is not None:
            self.current_address = addr
            self.abs_address_input.setText(f"0x{self.current_address:X}")
            self.read_and_display_memory()

    def toggle_auto_update(self, state):
        if self.chk_auto_update.isChecked():
            self.auto_update_timer.start(self.interval_spin.value())
            self.statusBar().showMessage("Auto Update started.")
        else:
            self.auto_update_timer.stop()
            self.statusBar().showMessage("Auto Update stopped.")

    def update_timer_interval(self, value):
        if self.auto_update_timer.isActive():
            self.auto_update_timer.start(value)

    def closeEvent(self, event):
        self.detach_process()
        super().closeEvent(event)
