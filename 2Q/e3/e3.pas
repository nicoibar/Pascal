program CalculadoraBasica;

uses crt;  { Librería para limpiar pantalla }

{ Funciones para operaciones matemáticas }
function Sumar(a, b: Real): Real;
begin
  Sumar := a + b;
end;

function Restar(a, b: Real): Real;
begin
  Restar := a - b;
end;

function Multiplicar(a, b: Real): Real;
begin
  Multiplicar := a * b;
end;

function Dividir(a, b: Real): Real;
begin
  if b <> 0 then
    Dividir := a / b
  else
  begin
    writeln('Error: No se puede dividir entre 0.');
    Dividir := 0;
  end;
end;

{ Procedimiento para mostrar el menú }
procedure MostrarMenu;
begin
  writeln(' Calculadora Básica ');
  writeln('1. Sumar');
  writeln('2. Restar');
  writeln('3. Multiplicar');
  writeln('4. Dividir');
  writeln('5. Salir');
  writeln;
  write('Seleccione una opción: ');
end;

{ Procedimiento para ejecutar la operación seleccionada }
procedure EjecutarOperacion(opcion: Integer; a, b: Real);
var
  resultado: Real;
begin
  case opcion of
    1: resultado := Sumar(a, b);
    2: resultado := Restar(a, b);
    3: resultado := Multiplicar(a, b);
    4: resultado := Dividir(a, b);
    else
      writeln('Opción inválida.');
      exit;
  end;
  writeln('El resultado es: ', resultado:0:2);
end;

{ Programa principal }
var
  opcion: Integer;
  num1, num2: Real;
begin
  repeat
    clrscr;  { Limpia la pantalla }
    MostrarMenu;
    readln(opcion);

    if opcion in [1..4] then
    begin
      write('Ingrese el primer número: ');
      readln(num1);
      write('Ingrese el segundo número: ');
      readln(num2);
      EjecutarOperacion(opcion, num1, num2);
    end
    else if opcion = 5 then
      writeln('¡Gracias por usar la calculadora!');

    writeln;
    writeln('Presione cualquier tecla para continuar...');
    readkey;
  until opcion = 5;
end.