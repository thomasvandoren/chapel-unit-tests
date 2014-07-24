
var fl = open("DIRS", iomode.r);

var err = fl.fstype();

writeln("type = ", err);
