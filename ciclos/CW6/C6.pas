program c6;
var
    frase: string;

 begin
    writeln('Escribe frases, y deja una linea en blanco para salir');
    write( 'Primera frase?' );
    readln( frase );
    while frase <> '' do
    begin
        writeln( 'Su longitud es ', length(frase) );
        write( 'Siguiente frase?' );
        readln( frase );
    end
 end. 