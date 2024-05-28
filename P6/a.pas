program divsores;
var
    num1:integer;

    begin
        writeln('ingrese numero');
        readln(num1);

        if (num1 mod 2 = 0) and (num1 mod 3 = 0) then
            begin
                writeln('divi 2 y 3');
            end
        else if (num1 mod 2 = 0) then
            begin
                writeln('divi 2');
            end
        else if (num1 mod 3 = 0) then
            begin
                writeln('divi 3');
            end
        else
            begin
                writeln('no divi ni 2, ni 3');
            end
    end.