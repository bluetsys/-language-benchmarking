long add = 0;
var st = System.DateTime.Now;

for (int index = 0; index <= 100000000; index++)
{
    add = add + index;
}

var ed = System.DateTime.Now - st;

System.Console.WriteLine("==========================");
System.Console.WriteLine("C#");
System.Console.WriteLine(add);
System.Console.WriteLine(ed.Milliseconds / 1000F);