program mul4;

procedure multi;
var
    i:integer;
begin
    for i:=1 to 100 do
    if ((i mod 4) = 0) then
        write(i,' ');
end;

begin
    multi;
end.