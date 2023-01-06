program Hello;

uses
  SysUtils, DateUtils;

var
    add:int64;
    index:int64;
    st:TDateTime;
    ed:TDateTime;
    se:Double;
begin

    add := 0;
    st := Now;

    for index := 1 to 100000000 do
    begin
        add := add + index;
    end;

    ed := Now;
    se := MilliSecondsBetween(st,ed) / 1000.0;

    writeln ('==========================');
    writeln ('pascal');
    writeln (add);
    writeln (FloatToStr(se));

end.
