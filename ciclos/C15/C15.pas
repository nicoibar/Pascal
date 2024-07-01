program c15;
var
    num, i : integer;

begin
    writeln('numeros');
    readln(num);
    i:=0;
    while num<>0 do
    begin
        readln(num);
        i:=i+1;
    end;
    writeln(i);
end.