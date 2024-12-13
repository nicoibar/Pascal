program e7;

var
    num:integer;

procedure paroimpar (num:integer);
begin
    if ((num mod 2) = 0) then
        begin
            writeln(num,' es par');
        end
    else
        begin
            writeln(num,' es impar');
        end
end;

begin
    repeat
    writeln('ingrese numero');
    read(num);
    paroimpar(num);
    until(num = 0);
end.