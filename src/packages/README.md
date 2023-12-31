# OUR PACKAGE FORMAT

### On the ```.pkgl``` file extension

For those of you attentive folks, you might have noticed that for my package list, I use a ```.pkgl``` file extension. This IS just a glorified 
text file, but I wanted to add in custom syntax. Unfortunately, I can't directly upload a new markdown language to github, So I just added the 
file extension. I should probably trademark it or crap like that if I want to do anything with it.

### SYNTAX

For anybody who is nutty enough to try to use it:
- The file's start is announced with ```-->```.
- The file's end is announced with ```<--```.
- This is basically it.

There are no comments, because it is built specifically for being a reference list. Because of the way the package manager is engineered,
any other added objects could break the entire package manager. The package manager works with under 30 lines of code because it simply 
searches a file for a string, and it relays the line containing that string to the download mechanism. If the package manager returns even ONE
more letter than the link containing the string, it would break.
