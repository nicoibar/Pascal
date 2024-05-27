program gaso;
var 
    nafta, gas, lt,descuento:real;
    respuesta, resdesc:string;
    begin
        writeln('nafta o gas');
        readln(respuesta);
        writeln('cuantos lt?');
        readln(lt);
        writeln('tiene descuento?Y/N');
        readln(resdesc);

        nafta:= 150*lt;
        gas:= 99*lt;
        descuento:=0.15;

        if respuesta = 'nafta' then
        begin
            if resdesc = 'Y' then
            begin
                writeln('son $', (nafta)-(nafta*descuento):0:2);
            end
                else if resdesc ='N' then
                begin
                    writeln('son $', (nafta):0:2);
                end
        end
        else if respuesta ='gas' then
                begin
                    if resdesc = 'Y' then
                    begin
                        writeln ('son $', (gas)-(gas*descuento):0:2);
                    end
                end
                else if resdesc ='N' then
                begin
                    writeln('son $', (gas):0:2);
                end
                    
        // else
        // begin
        //     writeln('error');
      // end
    end.