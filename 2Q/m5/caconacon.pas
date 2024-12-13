program Matrices;

type
    tmatris = array[1..3, 1..3] of integer;

var
    m1: tmatris;

procedure carga(var m1: tmatris);
var
    i, j: integer;
begin
    for i := 1 to 3 do
    begin
        for j := 1 to 3 do
        begin
            writeln('Ingrese el elemento [', i, ',', j, ']:');
            readln(m1[i, j]);
        end;
    end;
end;

procedure leer(m1: tmatris);
var
    i, j: integer;
begin
    writeln('La matriz es:');
    for i := 1 to 3 do
    begin
        for j := 1 to 3 do
        begin
            write(m1[i, j]:4);
        end;
        writeln;
    end;
end;

procedure mayores(m1: tmatris);
var 
    i, j: integer;
    mayor: integer;
begin
    for i := 1 to 3 do
    begin
        mayor := m1[i, 1];
        for j := 2 to 3 do  // Comienza desde 2
        begin
            if (mayor < m1[i, j]) then
                mayor := m1[i, j];
        end;
        writeln('El mayor de la fila ', i, ' es ', mayor);
    end;
end;

begin
    carga(m1);
    leer(m1);
    mayores(m1);
end.