program c10;
var
    num, suma : integer;
begin
    suma:= 0;
    repeat
            suma:= suma + num;
            writeln('suma ',suma);
            writeln('numero');
            readln(num);
        
    until (num<=0);
end.