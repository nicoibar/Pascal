program m6;

type
tmatris= array [1..3,1..3] of longint;
m3= array [1..3,1..3] of longint;
var
    m1:tmatris;
    m2: tmatris;
    num: integer;
procedure carga(var m1:tmatris);
var
    i,j: integer;

begin
    for i:= 1 to 3 do
    begin
        for j := 1 to 3 do
            begin
                writeln('ingrese');
                readln(m1[i,j]);
            end;
    end;
end;

procedure leer(m1:tmatris);
var
    i,j:integer;

begin
    for i:=1 to 3 do
    begin
        for j := 1 to 3 do
        begin
            write(m1[i,j]:4);
        end;
        writeln;
    end;
end;

procedure cuadrado(m1:tmatris;num:integer; var m2:tmatris);
var
    i,j,k,n,m:integer;

begin
    for n:= 1 to 3 do
    begin
        for m:= 1 to 3 do
        begin
            m2[n,m]:=1;
        end;
    end;
        for i:= 1 to 3 do
        begin
            for j := 1 to 3 do
            begin
                for k:= 1 to num do
                begin
                    m2[i,j]:= (m1[i,j])*(m2[i,j]);
                end;
                

            end;
        end;
    
end;

begin
    carga(m1);
    leer(m1);
    writeln('ingrese exponente');
    readln(num);
    cuadrado(m1,num,m2);
    leer(m2);
end.