program c22;
var
    num1 , mayor, menor : integer;

    begin
        writeln('ingrese numero');
        readln(num1);
        mayor:=-10000;
        menor:=10000;
        while num1<>0 do
        begin
            if num1>mayor then
            begin
                mayor:=num1;
            end;
            if num1< menor then
                begin
                    menor:=num1;
                end;
            writeln('numero mayor ', mayor);
            writeln('numero menor ', menor);
            writeln('ingrese numero');
            readln(num1);
        end;
    end.