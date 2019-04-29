import logging

log = logging.getLogger(__name__)
log.info("Mgear vendor Qt.py not found. Trying Qt.py from PYTHONPATH.")

# Using __import__ prevents Python from importing from current directory, which
# would make a circular import mechanism.
module = __import__("Qt")
QtCore = module.QtCore
QtWidgets = module.QtWidgets
QtGui = module.QtGui
QtCompat = module.QtCompat
