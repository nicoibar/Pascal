program CelsiusAFarenheit;

var
 celsius, farenheit: real;

begin

writeln('Ingrese la temperatura Grados Celsius');
readln(celsius);


farenheit := (celsius * 9/5) + 32;

writeln('La temperatura en grados farenheit es: ', farenheit:0:2);

end.