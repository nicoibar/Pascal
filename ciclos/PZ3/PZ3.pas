program pz3;
var
    letra, palabra : string;

begin
    writeln('letra');
    readln(letra);
    while letra<> '' do
    begin
        readln(letra);
        
        write(letra,' ',length(letra));
    end;
       
end.