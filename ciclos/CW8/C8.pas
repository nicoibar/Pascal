program c8;
var
    pass : string;

begin
    writeln('introducir contrasenia');
    readln(pass);
    while pass <>'sexo' do
    begin
        writeln('de nuevo');
        readln(pass);
    end;
    writeln('vamoooo');
end.