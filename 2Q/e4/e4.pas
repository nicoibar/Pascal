Program MostrarRenglones;
Uses crt;
{ Procedimiento que imprime un renglón varias veces }

Procedure ImprimirRenglones(CantReng: Integer);
Var
  i: Integer;
  Renglon: String;
Begin
  Renglon := '***';
  For i := 1 To CantReng Do
    Writeln(Renglon);
End;
{ Programa principal }
Begin
  Clrscr; { Limpia la pantalla }
  ImprimirRenglones(5); { Llamada al procedimiento con 5 renglones }
  Readln; { Espera a que el usuario presione Enter }
End.