## Contributing to mGear




### Code Style

We are moving all the code to [PEP8](https://www.python.org/dev/peps/pep-0008/)
If you want to contribute please follow the PEP8 standard

#### Line indentation for arguments

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