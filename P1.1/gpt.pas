program DivisionExacta;

var
    numero, divisor, resultado: integer;

begin
    writeln('Ingrese el numero a dividir:');
    readln(numero);
    
    writeln('Ingrese el divisor:');
    readln(divisor);
    
    if divisor = 0 then
        writeln('No se puede dividir por cero.')
    else if numero mod divisor = 0 then
    begin
        resultado := numero div divisor;
        writeln('La division es exacta. El resultado es: ', resultado);
    end
    else
        writeln('La division no es exacta.');
end.
