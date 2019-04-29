import logging

log = logging.getLogger(__name__)
log.info(
    "Mgear vendor qjsonmodel.py not found. Trying qjsonmodel.py from"
    " PYTHONPATH."
)

# Using __import__ prevents Python from importing from current directory, which
# would make a circular import mechanism.
module = __import__("qjsonmodel")
QJsonModel = module.QJsonModel
