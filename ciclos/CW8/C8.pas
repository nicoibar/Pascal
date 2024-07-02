program c8;
var
    pass : string;
    i : integer;
begin
    writeln('introducir contrasenia');
    readln(pass);
    i:=1;
    while (pass <>'sexo') and (i<3) do
    begin
        writeln('de nuevo');
        readln(pass);
        i:=i+1;
    end;
    if pass = 'sexo' then
        begin
            writeln('vamoooo');
        end
    else
        begin
            writeln('error 404');
        end
        
end.