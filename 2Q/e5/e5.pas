program e5;

var
    num:integer;

function suman(num:integer):integer;
var
    i, valor:integer;
begin
    valor:=0;
    for i := 1 to num do
        begin
            valor:= valor + i;
        end;
    suman:=valor;
end;

begin
    repeat
    writeln('ingrese numero');
    read(num);
    writeln('la suma es ',suman(num));
    until(num=0);
end.