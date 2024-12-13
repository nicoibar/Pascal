program m3;

type
tmatriz= array [1..2,1..3] of integer;

var
    m1:tmatriz;


procedure carga(var m1:tmatriz);
    var
        i,j:integer;
        begin
            for i := 1 to 2 do
                begin
                    for j := 1 to 3 do
                    begin
                        writeln('ingrese');
                        readln(m1[i,j]);
                    end;
                        
                end;
        end;

procedure leer(m1:tmatriz);
    var
        i,j:integer;
        begin
            for i := 1 to 2 do
                begin
                    for j := 1 to 3 do
                        begin
                            write(m1[i,j],' ');
                        end;
                    writeln;
                end;
        end;

procedure sumaC(m1:tmatriz);
    var
        i:integer;
        suma:integer;
        numc:integer;

        begin
            suma:=0;
            writeln('columna Suma');
            readln(numc);
            for i:= 1 to 2 do
                begin
                    suma:= suma + m1[i,numc];
                end;
            writeln('sus susmas sosn esas ',suma);
        end;

function sumaF(m1:tmatriz):integer;
var
    i,suma,numc:integer;
begin
    suma:=0;
    writeln('fila Suma');
    readln(numc);
    for i:= 1 to 3 do
        begin
            suma:= suma + m1[numc, i];
        end;
    writeln('suma filas ', suma);
end;

begin
    carga(m1);
    leer(m1);
    sumaC(m1);
    sumaF(m1);
end.