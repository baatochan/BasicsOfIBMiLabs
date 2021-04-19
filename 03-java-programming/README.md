# Working with JAVA

## Create java file and put the hello world code inside
Use `crtsrcpf` to create `javasrc` file. Open it with `wrkmbrpdm`, create new member with type `TXT`, enter the code and save.

Now you have to copy this code into the stream file. For that use following commands:
* change current dir `chgcurdir "/home"`
* create own dir `crtdir "<dir_name>"`
* copy member to file `cpytostmf frommbr('/qsys.lib/<lib_name>.lib/javasrc.file/<mbr_name>.mbr') tostmf('/home/<dir_name>/<file_name>.java') stmfopt(*replace) stmfcodpag(819)`

Then you need to open the QSHELL and run `javac`.
* enter your own dir `chgcurdir "<dir_name>"`
* start QSHELL `qsh`
* `cd` into `/home/<dir_name>`.
* run java compilator `javac <file_name>.java`
* run compiled java app `java <created_file>`. Name of the file you can check using `ls`.
