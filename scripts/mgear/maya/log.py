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
Logging Maya data.
"""

def matrix4(m, msg="matrix4"):
    """
    Print matrix 4x4 data.

    Args:
        m (matrix): 4x4 Matrix
        msg (str): Message in front of the data print.
    """
    s = msg + " : \n"\
        +"| %s , %s , %s , %s |\n"%(m[0][0], m[0][1], m[0][2], m[0][3])\
        +"| %s , %s , %s , %s |\n"%(m[1][0], m[1][1], m[1][2], m[1][3])\
        +"| %s , %s , %s , %s |\n"%(m[2][0], m[2][1], m[2][2], m[2][3])\
        +"| %s , %s , %s , %s |"%(m[3][0], m[3][1], m[3][2], m[3][3])

    print (s)
