# python
import json

# maya
import maya.cmds as mc

# RBF setups
import weightNode_io
# reload(weightNode_io)
# =============================================================================
# Constants
# =============================================================================
RBF_FILE_EXTENSION = ".rbf"

RBF_MODULES = {"weightDriver": weightNode_io}


# ==============================================================================
# Data export
# ==============================================================================
def fileDialog(startDir, mode=0):
    ext = RBF_FILE_EXTENSION
    fPath = mc.fileDialog2(dialogStyle=2,
                           fileMode=mode,
                           startingDirectory=startDir,
                           fileFilter="mGear RBF (*{})".format(ext))
    if fPath is not None:
        fPath = fPath[0]
    return fPath


def __importData(filePath):
    """Return the contents of a json file. Expecting, but not limited to,
    a dictionary.

    Args:
        filePath (string): path to file

    Returns:
        dict: contents of json file, expected dict
    """
    try:
        with open(filePath, "r") as f:
            data = json.load(f)
            return data
    except Exception as e:
        print e
        return None


def __exportData(data, filePath):
    """export data, dict, to filepath provided

    Args:
        data (dict): expected dict, not limited to
        filePath (string): path to output json file
    """
    try:
        with open(filePath, "w") as f:
            json.dump(data, f, sort_keys=False, indent=4)
    except Exception as e:
        print e


def importRBFs(filePath):
    data = __importData(filePath)
    if data is None:
        return
    for k, v in data.iteritems():
        rbfModule = RBF_MODULES[v["rbfType"]]
        rbfModule.crateRBFFromInfo({k: v})


def exportRBFs(nodes, filePath):
    rbfNode_Info = {}
    for n in nodes:
        rbfType = mc.nodeType(n)
        rbfNode_Info[n] = RBF_MODULES[rbfType].getNodeInfo(n)
    __exportData(rbfNode_Info, filePath)
    print "RBF Data exported: {}".format(filePath)
