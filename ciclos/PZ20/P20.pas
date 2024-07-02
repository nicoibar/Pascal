program c20;
var
    letra, vocal, consonante : char;

begin
    for letra:= 'a' to 'z' do
    begin
        if (letra='a') or (letra= 'e') or (letra= 'i') or (letra= 'o') or (letra='u')  then
            begin
            writeln('vocales ',letra);
            end
        else
        begin
            writeln('consonantes ',letra);
        end;
            
    end;
end.