import sys
import logging
from PySide6.QtWidgets import QApplication
from ui.main_window import MainWindow

def main():
    # Configure logging to display in standard output
    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s [%(levelname)s] %(name)s: %(message)s',
        handlers=[
            logging.StreamHandler(sys.stdout)
        ]
    )
    
    logger = logging.getLogger("Main")
    logger.info("Starting Antigravity Memory Viewer...")
    
    app = QApplication(sys.argv)
    
    # Show main window
    window = MainWindow()
    window.show()
    
    sys.exit(app.exec())

if __name__ == '__main__':
    main()
