program ep3;

type
    tmatris= array [1..3,1..3] of integer;

var
    m1:tmatris;

procedure carga(var m1:tmatris);
var
    i,j:integer;

begin
    for i:= 1 to 3 do
        begin
            for j:= 1 to 3 do
            begin
                writeln('ingrese');
                readln(m1[i,j]);
            end;
        end;        
end;

function suma(m1:tmatris):integer;
var
    i,j:integer;
    sumas:integer;

begin
    sumas:=0;
    for i:= 1 to 3 do
        begin
            for j:= 1 to 3 do
            begin
                sumas:= sumas + m1[i,j];
            end;
        end;
    suma:=sumas;
end;


begin
    carga(m1);
    writeln('la suma es ', suma(m1));
end.
