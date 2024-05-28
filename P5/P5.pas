program p5;
var num1,num2,num3: integer;

begin
   writeln('primer N');
   readln(num1);
   writeln('segudo N');
   readln(num2);
   writeln('tercer N');
   readln(num3);

   if (num1>num2) and (num1>num3) then
   begin
   writeln(num1,' es el mayor');
   end
   else if (num2>num3) then
   begin
   writeln(num2,' es el mayor');
   end
   else
   begin
   writeln(num3,' es el mayor');
   end
end.