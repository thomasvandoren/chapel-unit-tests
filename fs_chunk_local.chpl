var fl = open("DIRS", iomode.r);

var len = fl.length();
var s = fl.getchunk();

writeln(" end = ", s);
s = fl.getchunk(100);
writeln(" end = ", s);
s = fl.getchunk(100);
writeln(" end = ", s);
s = fl.getchunk(2000);
writeln(" end = ", s);

s = fl.getchunk(0,100);
writeln(" end = ", s);
s = fl.getchunk(100, len);
writeln(" end = ", s);
s = fl.getchunk(100, len+1);
writeln(" end = ", s);
s = fl.getchunk(2000, 100);
writeln(" end = ", s);


s = fl.getchunk(len);
writeln(" end = ", s);

s = fl.getchunk(len + 1);
writeln(" end = ", s);
