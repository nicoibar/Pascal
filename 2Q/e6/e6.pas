program E6;

var
    num:longint;

procedure mult(num:longint);
var
    i:integer;
    multip:longint;
    begin
        for i := 1 to 10 do
        begin
            multip:=num*i;
            writeln(multip);  
        end;

    end;
begin
    repeat
    writeln('ingrese numero');
    read(num);
    mult(num);
    until(num = 0);
end.