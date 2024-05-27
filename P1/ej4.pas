program divicion;
var 
    num1,num2,resto :integer;
    divi:real;
begin
    writeln('ingrese primer numero');
    readln(num1);
    writeln('ingrese divisor');
    readln(num2);
    
    // resto:= ;
    if num2 = 0 then
    begin
       writeln('no se puede dividir por 0');
    end
    else
        if num1 mod num2 = 0 then  
        begin
        divi:= num1/num2;
        
        writeln(divi:0:2);
        end
            else
                begin
                    writeln('la divicion no es exacta');
                end        
end.