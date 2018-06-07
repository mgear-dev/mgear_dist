import pymel.core as pm


class customShifterMainStep(object):
    '''
    Main Class for shifter custom steps
    '''

    def run(self, storedDic):
        """This function mus be re implemented for each custom step.

        Args:
            storedDic (dic): We have to pass the stored dictionary from the
                previous pass

        Raises:
            Exception: Description
        """
        raise Exception("'run' must be implemented")

    def dup(self, source, name=None):
        """Duplicate the source object and rename it

        Args:
            source (PyNode): The Source object to duplicate
            name (None, string): The name for the new object. If the value
                is None the name will be set by using the custom step name

        Returns:
            PyNode: The new duplicated object.
        """
        dup = pm.duplicate(source)[0]
        if name:
            pm.rename(dup, name)
        else:
            pm.rename(dup, "_".join([source.name(), self.name, "setup"]))
        pm.parent(dup, self.setup_root)
        return dup
