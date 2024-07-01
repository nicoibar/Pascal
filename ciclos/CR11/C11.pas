program c11;
var
    num: integer;

    begin
        num:= 26;
    repeat
        if num mod 2=0 then
            writeln(num);
            num:= num-1
    until (num<10);

    end.