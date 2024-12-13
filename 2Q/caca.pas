program MultiplicacionMatrices;

uses crt;

type
    Matriz = array of array of integer;

procedure LeerMatriz(var m: Matriz; filas, columnas: integer);
var
    i, j: integer;
begin
    SetLength(m, filas, columnas);
    for i := 0 to filas - 1 do
    begin
        WriteLn('Ingrese los elementos de la fila ', i + 1, ':');
        for j := 0 to columnas - 1 do
        begin
            Read(m[i][j]);
        end;
    end;
end;

procedure ImprimirMatriz(m: Matriz; filas, columnas: integer);
var
    i, j: integer;
begin
    for i := 0 to filas - 1 do
    begin
        for j := 0 to columnas - 1 do
        begin
            Write(m[i][j]:5);
        end;
        WriteLn;
    end;
end;

function MultiplicarMatrices(m1, m2: Matriz; filas1, columnas1, columnas2: integer): Matriz;
var
    i, j, k: integer;
    resultado: Matriz;
begin
    SetLength(resultado, filas1, columnas2);
    for i := 0 to filas1 - 1 do
    begin
        for j := 0 to columnas2 - 1 do
        begin
            resultado[i][j] := 0;
            for k := 0 to columnas1 - 1 do
            begin
                resultado[i][j] := resultado[i][j] + m1[i][k] * m2[k][j];
            end;
        end;
    end;
    MultiplicarMatrices := resultado;
end;

var
    matrizA, matrizB, matrizResultado: Matriz;
    filasA, columnasA, filasB, columnasB: integer;

begin
    clrscr;

    Write('Ingrese el número de filas de la primera matriz: ');
    ReadLn(filasA);
    Write('Ingrese el número de columnas de la primera matriz: ');
    ReadLn(columnasA);
    
    WriteLn('Ingrese la primera matriz:');
    LeerMatriz(matrizA, filasA, columnasA);

    Write('Ingrese el número de filas de la segunda matriz: ');
    ReadLn(filasB);
    Write('Ingrese el número de columnas de la segunda matriz: ');
    ReadLn(columnasB);
    
    if columnasA <> filasB then
    begin
        WriteLn('Error: El número de columnas de la primera matriz debe ser igual al número de filas de la segunda matriz.');
        Exit;
    end;

    WriteLn('Ingrese la segunda matriz:');
    LeerMatriz(matrizB, filasB, columnasB);

    matrizResultado := MultiplicarMatrices(matrizA, matrizB, filasA, columnasA, columnasB);
    
    WriteLn('La matriz resultante es:');
    ImprimirMatriz(matrizResultado, filasA, columnasB);
    
    ReadLn;
end.