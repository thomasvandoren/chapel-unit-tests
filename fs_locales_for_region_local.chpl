var fl = open("DIRS", iomode.r);
var chunk = fl.getchunk();
var locs = fl.localesForRegion(chunk(1), chunk(2));
writeln(locs);
