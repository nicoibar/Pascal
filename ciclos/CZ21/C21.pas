program c21;
var
    anio : integer;

    begin
        writeln('ingrese anio');
        readln(anio);
        while anio >=0 do
            begin
                if (anio mod 4=0) and ((anio mod 100<>0) or(anio mod 400=0)) then
                    begin
                        writeln('si');
                    end
                else
                begin
                    writeln('no');
                end;
                    writeln('ingrese anio');
                    readln(anio);
            end;
    end.