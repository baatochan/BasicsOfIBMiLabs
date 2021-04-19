# CL and Command Programming

## Entry and Setup
### Sign on as your specific User Profile
Connect using the setup in tn5250j.

Correct setup:
* Profile name: `i5b7`
* Host: `156.17.43.149`
* Port: `32023`
* Device name: `PPSxx` (xx different for each user)
* SSL: none
* Keep-alive: no

The username for login is same as device name. Password specified at the first lab.

### Create a library named PWxxxxxL
Use `crtlib` to create own library.

### Change current library to PWxxxxxL
You can change current library using `chgcurlib`, but it is better to change your starting library in user profile settings (1->9->Current library).

## CL Program
### Create a source physical file for the CL program
Use `crtsrcpf` to create source physical file which will contain all source files. Use the name `qclsrc` to avoid typing your own name each time with the command `wrkmbrpdm`. Use `wrkmbrpdm` to open the newly created file.

### Enter (or copy paste) the CL program source code
Create new entry (F6, source member is the member name, source type should be `CLP`) with the provided code. Save the entry (F3).

### Compile CL source code into a program
Use `crtclpgm <name>` to compile the newly created member. There should be info that compilation was succesfull. If not then use `wrksplf` to show spooled files, locate the lowest one with the name of your member and display it using 5 to read the compilation report.

### Call the program
Use `call <name> parm(<param_val>)` to call the newly created program.

## CL Command
### Create a source physical file for the CL command
Use `crtsrcpf` to create file named `qcmdsrc`.

### Upload the CL command source code using FTP (due to misconfiguration may not working property so we'll have to input using PDM again)
Tried connecting with FTP, FTP connection and authentication was successful, but `cd` command didn't work. Used PDM to enter needed member.

To do it with PDM use command `wrkmbrpdm qcmdsrc`, create new member (F6, type `cmd`), paste the provided command, and save.

### Compile command source code into a CL command
To compile the command use `crtcmd cmd(<name_of_command>) pgm(<name_of_prog>)`. NOTE: Command is the stuff you just created, program is the code you compiled earlier and can be run with `call`.

### Run the command
To run the cmd just enter its name, name of param and the param_val: `<name_of_command> <param_name>(<param_val>)`.

## Panel Group (Help Text)
### Create a source physical file for the panel group containing help text
Use `crtsrcpf` to create file named `qpnlsrc`.
### Enter source code using PDM
Open `qpnlsrc` with `wrkmbrpdm`, create new entry with `pnlgrp` type, enter the provided code, save.
### Compile panel group source code into a panel group object
To compile use `crtpnlgrp <name>`. Then connect the newly created panel group with the command using `chgcmd <cmd_name> hlppnlgrp(*libl/<pnl_name>) hlpid(<pnl_entry_name>)`. Don't forget about this `chgcmd`!
### Prompt on the command, see help text
Use f4 after entering the command name. Select some part on the screen and press F1 to see help panels.
