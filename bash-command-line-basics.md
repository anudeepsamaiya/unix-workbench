

Doesn't it kills you to repeatedly hit the arrow keys to reach start of the line
from the end of the line.

The cheatsheet:

## 1. Movement basics
- **Move few words backwards (lets say you want to move 3 words back)**
    * M-3 followed by M-b, negative numeric argument will make movement in opposite direction.
    * Move backward word by word, M-b. Similarly M-f will take you forward word by word.

- Toggle between the start of line and current cursor position: *C-XX*
- Go at the beginning of the line: C-A
- Go at the end of the line: C-E

- **Clean up the line:**
    * You can use C-U to clear up to the beginning.
    * C-A C-K to wipe the current line in the terminal
    * Remove the forward words for example, if you are middle of the command: C-K
    * Remove characters on the left, until the beginning of the word: C-W
- Recall the deleted command: C-Y (then M-Y)

- To clear your entire screen: C-L
- Cancel the current command/line: C-C.

## 2. Navigating command history
- C-r Search command in history & type the search term,
    repeat C-r again to search similar command in history
- C-j End the search at current history entry
- C-g Cancel the search and restore original line
- C-n Next command from the History
- C-p previous command from the History
