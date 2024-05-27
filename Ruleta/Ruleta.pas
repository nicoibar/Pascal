program ruleta;
var tiros, cargado: integer;
    inicio:string;
begin
    randomize;
    writeln('empezamos?y/n');
    readln(inicio);
    
    tiros:=random(4);
    cargado:=random(2);

    if inicio='y' then
        begin
            if cargado = 1 then
            begin
            writeln('corchaso, salio ', tiros,',', cargado);
            end
            else
            begin
            writeln('zafaste, salio ', tiros,',', cargado);    
            end
        end
    else
    begin
    writeln('cagon');
    end        
end.

