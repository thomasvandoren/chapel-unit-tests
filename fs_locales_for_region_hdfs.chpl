var hdfs = hdfs_chapel_connect("default", 0);
var fl = hdfs.hdfs_chapel_open("/tmp/big.txt", iomode.r);
var chunk = fl.getchunk();
var locs = fl.locsforregion(chunk(1), chunk(2));
writeln(locs);

