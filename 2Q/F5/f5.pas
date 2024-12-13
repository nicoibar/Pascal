program f5;
type
tvector= array [1..3] of integer;

var
v1,v2,v3:tvector;

procedure carga (var v1,v2:tvector);
var
    i:integer;
begin
    writeln('vector 1');
    for i:= 1 to 3 do
    begin
        readln(v1[i]);
    end;
    writeln('vector 2');
    for i:= 1 to 3 do
    begin
        readln(v2[i]);
    end;
end;

procedure suma (v1,v2:tvector;var v3:tvector);
var
    i: integer;

begin
    for i:= 1 to 3 do
        begin
            v3[i]:= v1[i]+v2[i];
            writeln('v3: ',v3[i]);
        end;
end;


begin
    carga(v1,v2);
    suma(v1,v2,v3);
end.