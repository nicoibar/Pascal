program f1;
type
Vcaca = array [1..5] of integer;

var
    vector:Vcaca;
    i,suma:integer;
    promedio:real;

begin
    suma:=0;
    promedio:=0;
    for i:= 1 to 5 do
    begin
    writeln('ingrese numeros');
    readln(vector[i]);
    end;
    for i:= 1 to 5 do
    begin
        suma:= suma+ vector[i];
    end;
    writeln('suma ',suma);
    promedio:= suma/5;
    writeln('promedio ', promedio:0:2);
end.