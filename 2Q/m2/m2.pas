program m2;

const 
    dias: array[1..7] of string = ('L','Ma','Mi','J','V','S','D');

type 
tmatriz = array[1..7] of real;

var
horas:tmatriz;

procedure choras(var horas:tmatriz);
    var
        i:integer;
        begin
            for i := 1 to 7 do
                begin
                    writeln('inserte cantidad de horas de dia ', i);
                    readln(horas[i]);
                end;
        end;

procedure leer(horas:tmatriz);
    var
        i:integer;
        begin
            for i := 1 to 7 do
                begin
                    writeln(horas[i]:0:2,' horas')
                end;
        end;

procedure pro(horas:tmatriz);
    var
        i:integer;
        suma:real;
        promedio:real;
        begin
            suma:=0;
            for i := 1 to 7 do
            begin
                suma:= suma + horas[i];   
            end;
            promedio:= suma/7;
            writeln('estudiaste en promedio ', promedio:0:2,' horas forro');
        end;

function destudio(horas:tmatriz):integer;
    var
        i:integer;
        mayor:real;
    begin
        mayor:=horas[1];
        destudio:=1;
        for i:= 2 to 7 do
            begin
                
                if (mayor< horas[i]) then
                    begin
                       mayor:=horas[i]; 
                       destudio:= i;
                    end                                       
            end
    end;

function mestudio(horas:tmatriz):integer;
    var
        i:integer;
        mayor:real;
    begin
        mayor:=horas[1];
        mestudio:=1;
        for i:= 2 to 7 do
            begin               
                if (mayor > horas[i]) then
                    begin
                       mayor:=horas[i]; 
                       mestudio:= i;
                    end                                       
            end
    end;

begin
    writeln('horas');
    choras(horas);
    leer(horas);
    pro(horas);
    writeln('El dia mas estudio es ',dias[destudio(horas)]);
    writeln('El dia mas estudio es ',dias[mestudio(horas)]);
end.

