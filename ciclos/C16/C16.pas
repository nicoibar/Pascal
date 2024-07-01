program k;

var 
    num,x,rep,i,acu,pares,impar: integer;
    prom:real;
begin
x:=-10000000;
            repeat
            writeln('ingrese un numero');
            readln(num);
            acu:=acu+num;
            i:=i+1;
            if num mod 2 = 0 then
                pares:=pares+1
            else
                begin
                if(num mod 2<>0) then
                    impar:=impar+1;
                end;
            if num=x then
            rep:=rep+1;
            x:=num;
        until (i=11);
    prom:= acu/10;
    writeln('Promedio de los numeros es',prom:8:2);
    writeln('Los numeros pares son ',pares);
    writeln('Los numeros impares son ',impar);
    writeln('Los numeros repetidos son ',rep);
end.
