program c19;
var
    palabra, frase : string;

    begin
        writeln('ingrese palabra');
        readln(palabra);
        frase:= palabra+' ';
        while palabra <> '' do
        begin
            writeln('ingrese palabra');
            readln(palabra);
            frase:= frase+palabra+' ';
        end;
        writeln(frase); 
    end.