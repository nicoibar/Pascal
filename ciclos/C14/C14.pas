program c14;
var
    num, x : integer;

    begin
        x:=1;
        writeln('ingrese numero');
        readln(num);
        repeat
            num:= num+1;
            writeln(num);            
            x:=x+1;
        until x>10
    end.