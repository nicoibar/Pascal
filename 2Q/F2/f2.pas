program f2;
var
    m1,m2: array[1..3,1..3] of integer;
    i,j,suma:integer;
begin
    suma:=0;
    for i:= 1 to 3 do
        begin
            for j := 1 to 3 do
                begin
                    readln(m1[i,j]);
                    suma:= suma + m1[i,j];
                end;
        end;
    for i:= 1 to 3 do
        begin
            for j := 1 to 3 do
                begin
                    write(m1[i,j]:4);
                end;
            writeln;
        end;
    writeln(suma);
end.