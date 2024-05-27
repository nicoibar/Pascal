program platita;
var sueldoB,impuesto,bono, total: real;
aplicabono:string;

begin
    writeln('cuanto es el sueldo');
    readln(sueldoB);
    impuesto:=0.03;
    bono:=0.50;
    total:=(sueldoB+(sueldoB*bono));
    if sueldoB>=100 then
        begin
            writeln('aplica bono?y/n');
            readln(aplicabono);
            if aplicabono='y' then
                begin 
                writeln('su suledo es de ',(total-total*impuesto):0:2,'$');
                end
            else if aplicabono='n' then
                begin
                writeln('su suledo es de ',(sueldoB-sueldoB*impuesto):0:2,'$');
                end    
        end
    else
    begin
        writeln('aplica bono?y/n');
        readln(aplicabono);
        if aplicabono='y' then
            begin
            writeln('su sueldo es de ',(total):0:2,'$');
            end
        else if aplicabono='n' then
            begin
            writeln('su sueldo es de ',(sueldoB):0:2,'$');
            end
    end
end.