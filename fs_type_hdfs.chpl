use HDFS;

var hdfs = hdfs_chapel_connect("default", 0);
var fl = hdfs.hdfs_chapel_open("/tmp/a1.txt", iomode.r);

var good = fl.fstype();

writeln("type = ", good);
