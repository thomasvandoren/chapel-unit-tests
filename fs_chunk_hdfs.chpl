use HDFS;

var hdfs = hdfs_chapel_connect("default", 0);
var fl = hdfs.hdfs_chapel_open("/tmp/big.txt", iomode.r);

var good = fl.fstype();

var chunk = fl.getchunk(2370560);
writeln("type = ", good, " chunk = ", chunk);

chunk = fl.getchunk(2370561);
writeln("type = ", good, " chunk = ", chunk);

chunk = fl.getchunk(2370559);
writeln("type = ", good, " chunk = ", chunk);

chunk = fl.getchunk(0);
writeln("type = ", good, " chunk = ", chunk);

chunk = fl.getchunk(2);
writeln("type = ", good, " chunk = ", chunk);

writeln("Now a smaller file");

fl.close();

/******************************************/

var fl1 = hdfs.hdfs_chapel_open("/tmp/a1.txt", iomode.r);

chunk = fl1.getchunk(2370560);
writeln("type = ", good, " chunk = ", chunk);

chunk = fl1.getchunk(2370561);
writeln("type = ", good, " chunk = ", chunk);

chunk = fl1.getchunk(2370559);
writeln("type = ", good, " chunk = ", chunk);

chunk = fl1.getchunk(1024);
writeln("type = ", good, " chunk = ", chunk);

chunk = fl1.getchunk(1025);
writeln("type = ", good, " chunk = ", chunk);

chunk = fl1.getchunk(1023);
writeln("type = ", good, " chunk = ", chunk);

chunk = fl1.getchunk(0);
writeln("type = ", good, " chunk = ", chunk);

chunk = fl1.getchunk(2);
writeln("type = ", good, " chunk = ", chunk);

fl1.close();
hdfs.hdfs_chapel_disconnect();
