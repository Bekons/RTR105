Python 2.7.12 (default, Dec  4 2017, 14:50:18) 
[GCC 5.4.0 20160609] on linux2
Type "copyright", "credits" or "license()" for more information.
>>> kill ivo
SyntaxError: invalid syntax
>>> vars()
{'__builtins__': <module '__builtin__' (built-in)>, '__name__': '__main__', '__doc__': None, '__package__': None}
>>> __bui

Traceback (most recent call last):
  File "<pyshell#2>", line 1, in <module>
    __bui
NameError: name '__bui' is not defined
>>> __builtins__.__doc__
"Built-in functions, exceptions, and other objects.\n\nNoteworthy: None is the `nil' object; Ellipsis represents `...' in slices."
>>> __builtins__.__doc__
"Built-in functions, exceptions, and other objects.\n\nNoteworthy: None is the `nil' object; Ellipsis represents `...' in slices."
>>> print __builtins__.__doc__
Built-in functions, exceptions, and other objects.

Noteworthy: None is the `nil' object; Ellipsis represents `...' in slices.
>>> print __builtins__.abs.__doc__
abs(number) -> number

Return the absolute value of the argument.
>>> abs(10)
10
>>> abs(-10)
10
>>> Return the absolute value of the argument.
SyntaxError: invalid syntax
>>> a = 10
>>> abs
<built-in function abs>
>>> vars()
{'__builtins__': <module '__builtin__' (built-in)>, '__name__': '__main__', '__doc__': None, 'a': 10, '__package__': None}
>>> a = 20
>>> vars()
{'__builtins__': <module '__builtin__' (built-in)>, '__name__': '__main__', '__doc__': None, 'a': 20, '__package__': None}
>>> a x b
SyntaxError: invalid syntax
>>> a * b

Traceback (most recent call last):
  File "<pyshell#16>", line 1, in <module>
    a * b
NameError: name 'b' is not defined
>>> print a.__doc__
int(x=0) -> int or long
int(x, base=10) -> int or long

Convert a number or string to an integer, or return 0 if no arguments
are given.  If x is floating point, the conversion truncates towards zero.
If x is outside the integer range, the function returns a long instead.

If x is not a number or if base is given, then x must be a string or
Unicode object representing an integer literal in the given base.  The
literal can be preceded by '+' or '-' and be surrounded by whitespace.
The base defaults to 10.  Valid bases are 0 and 2-36.  Base 0 means to
interpret the base from the string as an integer literal.
>>> int('0b100', base=0)
4
>>> a = 1.5
>>> vars()
{'__builtins__': <module '__builtin__' (built-in)>, '__name__': '__main__', '__doc__': None, 'a': 1.5, '__package__': None}
>>> c = D

Traceback (most recent call last):
  File "<pyshell#20>", line 1, in <module>
    c = D
NameError: name 'D' is not defined
>>> print c.__doc__

Traceback (most recent call last):
  File "<pyshell#21>", line 1, in <module>
    print c.__doc__
NameError: name 'c' is not defined
>>> print c.__doc__

Traceback (most recent call last):
  File "<pyshell#22>", line 1, in <module>
    print c.__doc__
NameError: name 'c' is not defined
>>> 
