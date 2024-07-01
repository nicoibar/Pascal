program p8;
var
    num1, num2, m1, m2, par, impar :integer;

begin
    writeln('num1');
    readln(num1);
    writeln('num2');
    readln(num2);

    if (num1>num2) then
        begin
            writeln('num1 Mayor');
        end
    else
        if (num2>num1) then
        begin
            writeln('num2 Mayor');
        end
    else
    begin
        writeln('iguales');
    end;
    if (num1 mod 2=0) and (num2 mod 2=0) then
        begin
            writeln('pares');
        end
    else
        if (num1 mod 3=0) and (num2 mod 3=0) then
        begin
            writeln('impares');
        end
    else
        if (num1 mod 2=0) and (num2 mod 2<>0) then
        begin
            writeln('el primero par y el segundo impar');
        end
     else if (num1 mod 2<>0) and (num2 mod 2=0) then
        
        begin
            writeln('el primero impar y el segundo par');
         end      

end.
    
