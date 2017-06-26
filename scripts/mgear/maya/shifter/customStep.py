# MGEAR is under the terms of the MIT License

# Copyright (c) 2016 Jeremie Passerin, Miquel Campos

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Author:     Jeremie Passerin      geerem@hotmail.com  www.jeremiepasserin.com
# Author:     Miquel Campos         hello@miquel-campos.com  www.miquel-campos.com
# Date:       2016 / 10 / 10

#maya
import pymel.core as pm



class customShifterMainStep(object):
    '''
    Main Class for shifter custom steps
    '''
    def run(self, storedDic):
        """This function mus be re implemented for each custom step.

        Args:
            storedDic (dic): We have to pass the stored dictionary from the previous pass

        Raises:
            Exception: Description
        """
        raise Exception("'run' must be implemented")

    def dup(self, source, name=None):
        """Duplicate the source object and rename it

        Args:
            source (PyNode): The Source object to duplicate
            name (None, string): The name for the new object. If the value is None
                the name will be set by using the custom step name

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
