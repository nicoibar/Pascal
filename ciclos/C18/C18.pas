program SumaEntreNumeros;

var
  num1, num2: Integer;
  menor, mayor: Integer;
  suma: Integer;
  i: Integer;

begin
  // Paso 1: Ingresar los números por teclado
  Write('Ingrese el primer número: ');
  ReadLn(num1);
  Write('Ingrese el segundo número: ');
  ReadLn(num2);

  // Paso 2: Determinar cuál es el menor y cuál es el mayor
  menor := Min(num1, num2);
  mayor := Max(num1, num2);

  // Paso 3: Calcular la suma de los números entre menor y mayor
  suma := 0;
  for i := menor to mayor do
  begin
    suma := suma + i;
  end;

  // Paso 4: Mostrar el resultado
  WriteLn('La suma de los números entre ', menor, ' y ', mayor, ' es: ', suma);

end.