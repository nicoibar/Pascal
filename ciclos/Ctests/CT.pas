program validar;
var
    i,com : integer;

    begin
        writeln('numero');
        readln(i);
        while i<>0 do
        begin
            readln(i);
            com:=com+1;
        end;
        writeln(com);
    end.