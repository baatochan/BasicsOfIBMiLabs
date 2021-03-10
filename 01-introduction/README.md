# Introduction to IBM i
## Basics

_This README assumes you're using tn5250 as a terminal to connect to the IBM i device._

Each screen has writable and not writable parts. Text can be only entered to text boxes.

### Basic keys:
* `TAB` - Move cursor to the next input box
* `ENTER` - Send whole screen. Press it only if you wanna accept the whole screen.
* `F1` - help (something like `man`), every command and every parameter has its own section
* `F3`/`F12` - exits/cancels the whole screen - the difference will be explained later (i still don't know lol)
* `F4` - prompt - opens a screen with all parameters for given command (you don't have to write everything)
* `ESC` - don't use it lol
* `Page Up`/`Page Down` - switch screen, sometimes one screen can contain multiple switching part and you have to select the correct one with cursor position

### Basic commands
* password change - `(1) User tasks` -> `(8) Change your password`
* user edit - `(1) User tasks` -> `(9) Change your user profile`
* `crtlib` - create library (directory)
* `chgcurlib` - change current library, sets working dir to X (starting current library can be set in user edit)
* `crtsrcpf` - create source physical file, source files used for compilation on IBM i are stored as a member of a source physical file, you need one to write any code, `qclsrc` is a default name for a srcpf - use it and you won't have to provide it every time you compile
* `wrkmbrpdm` - work with members using pdm, open a code editor for specific file
* `crtclpgm` - create cl program - compile a program with given name (looks for a member named X in a default srcpf)
* `wrksplf` - work with spooled files - shows a list of all spooled files, the last one is an output from the compilation
