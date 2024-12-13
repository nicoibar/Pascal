program m4;

type

tmatris= array [1..3,1..3] of integer;

var
    m1,m2:tmatris;

procedure carga(var m1:tmatris);
    var
        i,j:integer;
begin
    for i := 1 to 3 do
    begin
        for j := 1 to 3 do
            begin
                writeln('ingrese');
                readln(m1[i,j]);
            end;
    end;
        
end;
    
procedure transponedor(m1:tmatris; var m2:tmatris);
    var
        i,j:integer;
begin
    for i := 1 to 3 do
        begin
            for j := 1 to 3 do
            begin
                m2[j,i]:=m1[i,j];
            end;    
        end;
end;

procedure leer(m2:tmatris);
    var
        i,j:integer;
begin
    for i := 1 to 3 do
        begin
            for j := 1 to 3 do
            begin
                write(m2[i,j],' ');
            end;
        writeln;        
        end;
end;


begin
    carga(m1);
    transponedor(m1,m2);
    leer(m1);
    leer(m2);
end.