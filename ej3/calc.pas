program calcu;
var 
    num1,num2,suma,resta,mult,divi:real;
var
    respuesta:string;
begin

writeln('inserte primer numero');
readln(num1);
writeln('inserte segundo numero');
readln(num2);
writeln('inserte operacion suma, resta, mult, divi');
readln(respuesta);
suma:= num1 + num2;
resta:= num1-num2;
mult:= num1*num2;
divi:= num1/num2;


if respuesta='suma' then
    begin
        writeln(suma: 0:2);
        readln;
    end
        else
            if respuesta='resta' then
            begin
            writeln(resta: 0:2);
            readln;  
            end
            else
                if respuesta='mult' then
                begin
                writeln(mult: 0:2);
                readln;
                end
                else
                    if respuesta='divi' then
                    begin
                    writeln(divi: 0:2);
                    readln;
                    end                   
end.