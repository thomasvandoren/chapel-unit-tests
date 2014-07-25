use IO;

var str:string;

// run: nc -l 1080 in another window on this computer
var fl = copen("http://norvig.com", iomode.r);
var reader = fl.reader();

var flout = copen("http://127.0.0.1:1080", iomode.cw);
var writer = flout.writer();

while(reader.readline(str)) {
  writer.write(str);
}

reader.close();
fl.close();

writer.close();
flout.close();


