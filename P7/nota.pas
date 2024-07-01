program notas;
var 
    a,b,c,d,e:integer;
    nota:string;

    begin
        writeln('ingrese nota');
        readln(nota);
        a:=4;
        b:=5;
        c:=6;
        d:=7;
        e:=8;

        if nota = 'a' then
            begin
                writeln(a);
            end
        else if nota = 'b' then
            begin
                writeln(b); 
            end
        else if nota = 'c' then
            begin
                writeln(c);
            end
        else if nota= 'd' then
            begin
                writeln(d);
            end
        else if nota = 'e' then
            begin
                writeln(e);
            end
        else
            begin
                writeln('error');
            end            
    end.