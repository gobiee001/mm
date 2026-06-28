from PySide6.QtWidgets import QWidget, QVBoxLayout, QTextEdit
from PySide6.QtGui import QFont, QTextCursor

class HexViewWidget(QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.layout = QVBoxLayout(self)
        self.layout.setContentsMargins(0, 0, 0, 0)
        
        self.text_edit = QTextEdit(self)
        self.text_edit.setReadOnly(True)
        self.text_edit.setLineWrapMode(QTextEdit.LineWrapMode.NoWrap)
        
        # Use monospaced font
        font = QFont("Consolas", 10)
        if not font.exactMatch():
            font = QFont("Courier New", 10)
        self.text_edit.setFont(font)
        
        # Style sheet for premium dark view
        self.text_edit.setStyleSheet("""
            QTextEdit {
                background-color: #1a1a1a;
                color: #dcdcdc;
                selection-background-color: #264f78;
                selection-color: #ffffff;
                border: 1px solid #333333;
                border-radius: 4px;
                padding: 5px;
            }
        """)
        
        self.layout.addWidget(self.text_edit)
        
    def set_hex_data_html(self, html_content: str):
        # We wrap in a pre tag to preserve exact monospace spaces and alignment
        full_html = f"""
        <html>
        <body style="margin: 0; padding: 0; background-color: #1a1a1a;">
        <pre style="font-family: 'Consolas', 'Courier New', monospace; font-size: 10pt; color: #dcdcdc; margin: 0; padding: 0;">{html_content}</pre>
        </body>
        </html>
        """
        # Save scroll bar position so updating doesn't reset the user scroll
        v_bar = self.text_edit.verticalScrollBar()
        h_bar = self.text_edit.horizontalScrollBar()
        v_pos = v_bar.value()
        h_pos = h_bar.value()
        
        self.text_edit.setHtml(full_html)
        
        # Restore scroll bar positions
        v_bar.setValue(v_pos)
        h_bar.setValue(h_pos)

    def clear(self):
        self.text_edit.clear()

