program cp1;
var
    num1, i, suma : integer;

begin
    writeln('ingrese numero');
    readln(num1);
    suma:= 0;
    for i := 1 to 10 do
    begin
        num1:=num1+1;
        suma:= suma+num1;
        if num1 mod 2=0 then
        begin
            writeln('par ',num1);
        end
        else
            if num1 mod 2<>0 then
        begin
            writeln('impar ',num1);
        end;    
        writeln('total ',suma);  
    end;
   
        
end.
    
