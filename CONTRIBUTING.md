## Contributing to mGear


### Tuple versus List

Use List when mutability is required or intended, tuple otherwise.

```python
for item in ("good", "use", "of", "tuple"):
    pass
```

Tuples will tell you and the user when used them in an unintended way.

```python
# You
immutable = (1, 2, 3)

# User
immutable.append(4)
# ERROR
```

Whereas a list would not, and cause a difficult-to-debug error. The fabled "Works on my machine (tm)".

### Mutable arguments

Never use a mutable object in an argument signature.

```python
def function(wrong=[]):
    wrong.append(1)
    print(wrong)


function()
# [1]
function()
# [1, 1]
function()
# [1, 1, 1]
```

The same goes for `{}`. Instead, pass `None` and convert internally.

```python
def function(wrong=None):
    wrong = wrong or []
    wrong.append(1)
    print(wrong)

function()
# [1]
function()
# [1]
function()
# [1]
```

### Docstrings

All docstrings are written in Google Napoleon format.

```python
def function(a, b=True):
    """Summary here, no line breaks

    Long description here.

    Arguments:
        a (str): A first argument, mandatory
        b (bool, optional): A second argument

    Example:
        >>> print("A doctest")
        'A doctest'

    """
```

<br>

### Quotation Marks

Default to double-ticks, fallback to single-tick.

```python
# Right
side = "Right"

# Wrong
side = 'Left'

# Right
def function():
    """It's a single tick"""

# Wrong
def function():
    '''It's a single tick"""
```

<br>

### Code Style

We are refactoring all the code to [PEP8](https://www.python.org/dev/peps/pep-0008/)
If you want to contribute please follow the PEP8 standard

#### Ignore PEP8 Errors

"W503": [Break bfore aor after binary operator](https://www.python.org/dev/peps/pep-0008/#should-a-line-break-before-or-after-a-binary-operator)

#### Line break for long arguments

```python

# No
function(arg1, arg2,
         kwarg=False, kwarg2=True)

# No
function(
    arg1, arg2,
    kwarg=False, kwarg2=True)

# Yes
function(arg1,
         arg2,
         kwarg=False,
         kwarg2=True)
# Yes
function(
    arg1, arg2, kwarg=False, kwarg2=True)

# OK
function(
    arg1,
    arg2,
    kwarg=False,
    kwarg2=True)

```