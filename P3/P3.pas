program auto;
var 
    encendido,nafta:string;
    lt,consumo,km,tanque:real;
begin
    

writeln('esta prendido? y/n');
readln(encendido);

if encendido='y' then
begin
    writeln('tiene nafta? y/n');
    readln(nafta);

    consumo:=100/5;

        if nafta='y' then
        begin
         writeln('cuantos lt');
            readln(lt);
            writeln('cuantos km queire recorer?');
            readln(km);
            tanque:=(consumo*lt);

            if tanque>km then
            begin
                writeln('llega y puede recorer ',(tanque-km):0:2,' km mas');
            end
            else 
            begin
                writeln('no llega faltan ',(km-tanque):0:2, 'km, puede recorrer ',tanque:0:2,' km antes de cargar');
            end
        end
        else
        begin
           writeln('no tenes nafta pa'); 
        end
        
end
else
writeln('prende el auto y reinicia el programa pa');        
end.