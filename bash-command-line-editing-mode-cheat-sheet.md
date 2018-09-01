

dont it kills you to repeatedly hit the arrow keys to reach start of the line
from the end of the line. You don't want to waste your time hitting arrows keys
or the home/end keys to navigate through the command line.

The cheatsheet:

#1. Movement basics

* move few words backwards (lets say you want to move 3 words back)
    M-3 followed by M-b, negative numeric argument will make movement in opposite direction.
    Move backward word by word, M-b. Similarly M-f will take you forward word by word.

    Clean up the line: You can use C-U to clear up to the beginning.
    Clean up the line: C-A C-K to wipe the current line in the terminal
    Cancel the current command/line: C-C.
    Recall the deleted command: C-Y (then Alt-Y)
    Go at the beginning of the line: C-A
    Go at the end of the line: C-E
    Remove the forward words for example, if you are middle of the command: C-K
    Remove characters on the left, until the beginning of the word: C-W
    To clear your entire command prompt: C-L
    Toggle between the start of line and current cursor position: C-XX

    C-r Search command in history - type the search term. repeatedly press C-r
    again to search similar command in history
    C-j End the search at current history entry
    C-g Cancel the search and restore original line
    C-n Next command from the History
    C-p previous command from the Histor
