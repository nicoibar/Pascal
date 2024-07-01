program c7;
var
    num, suma : integer;

begin
    suma:=0;
    writeln('numero');
    readln(num);
    while num <> 0 do
        begin
            suma:= suma + num;
            writeln('suma acutal ',suma);
            readln(num);
            writeln(suma);
        end;
end.