program m1;

type

matriz= array [1..2,1..2] of integer;

var
    matriz1:matriz;
    matriz2:matriz;
    matriz3:matriz;
    i,j,k,l: integer;
    num: integer;

procedure carga1(var z:matriz);
    var
        i,j:integer;
    begin
        for i := 1 to 2 do
            begin
                for j := 1 to 2 do
                    begin
                        writeln('numero ','',i,'',j,':');
                        readln(z[i,j]);
                    end;
            end;        
    end;

procedure suma(a,b:matriz;var matriz3:matriz);
    var
        i,j:integer;
    begin
        for i := 1 to 2 do       
        begin
            for j := 1 to 2 do
                begin
                    matriz3[i,j]:= a[i,j]+b[i,j];
                end;
        end;
    end;

procedure leer(matriz3:matriz);
    var
        i,j:integer;
    begin
        for i := 1 to 2 do
            begin
                for j := 1 to 2 do
                begin
                    write(matriz3[i,j],' ');
                end;
            writeln;        
            end;
    end;

    begin
        writeln('matriz 1');
        carga1(matriz1);
        writeln('matriz 2');
        carga1(matriz2);
        suma(matriz1,matriz2,matriz3);
        leer(matriz3);
    end.