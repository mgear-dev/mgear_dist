import os

#maya
import pymel.core as pm



class customShifterMainStep(object):
    '''
    Main Class for shifter custom steps
    '''
    def run(self, storedDic):
        raise Exception("'run' must be implemented")

    def dup(self, source, name=None):
        dup = pm.duplicate(source)[0]
        if name:
            pm.rename(dup, name)
        else:
            pm.rename(dup, "_".join([source.name(), self.name, "setup"]))
        pm.parent(dup, self.setup_root)
        return dup