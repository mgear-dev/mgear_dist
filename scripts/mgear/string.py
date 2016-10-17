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

"""
string management methods
"""

##########################################################
# GLOBAL
##########################################################
import re

##########################################################
# FUNCTIONS
##########################################################
def normalize(string):
    """
    Replace all invalid characters with "_"

    :param string string: A string to normalize.
    :return string: Normalized string
    """
    string = str(string)

    if re.match("^[0-9]", string):
        string = "_"+string

    return re.sub("[^A-Za-z0-9_-]", "_", str(string))

def removeInvalidCharacter(string):
    """
    Remove all invalid character.

    :param string string: A string to normalize.
    :return string: Normalized string.
    """
    return re.sub("[^A-Za-z0-9]", "", str(string))

def replaceSharpWithPadding(string, index):
    """
    Replace a list of # symbol with properly padded index. (ie. count_### > count_001 )

    :param string string: A string to set. Should include '#'
    :param integer index: Index to replace.
    :return string: Normalized string.
    """
    if string.count("#") == 0:
        string += "#"

    digit = str(index)
    while len(digit) < string.count("#"):
        digit = "0"+digit

    return re.sub("#+", digit, string)


def convertRLName(name):
    """
    Convert a string with underscore "_\L", "_L0\_", "L\_", "_L" to "R". And vice and versa.

    :param string name: string to convert
    :return: Tuple of Integer
    """
    if name == "L":
        return "R"
    elif name == "R":
        return "L"

    rePattern = re.compile("_[RL][0-9]+_|^[RL][0-9]+_|_[RL][0-9]+$|_[RL]_|^[RL]_|_[RL]$")

    reMatch = re.search(rePattern, name)
    if reMatch:
      instance = reMatch.group(0)
      if instance.find("R") != -1:
            rep = instance.replace("R", "L")
      else:
            rep = instance.replace("L", "R")

      name = re.sub(rePattern, rep, name)

    return name