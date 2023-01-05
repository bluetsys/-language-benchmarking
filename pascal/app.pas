program Hello;

uses
  SysUtils, DateUtils;

var
    sum:int64;
    index:int64;
    st:TDateTime;
    ed:TDateTime;
begin

    sum := 0;
    st := Now;

    for index := 1 to 1000000000 do
    begin
        sum := sum + index;
    end;

    ed := Now - st;

    writeln ('==========================');
    writeln ('pascal');
    writeln (sum);
    writeln (ed);

end.