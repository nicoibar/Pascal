program ar3;

const 
n=2;

type
    Rcliente = record
    id:integer;
    nombre:string;
    direccion: string;
    telefono,meil:string;
end;

tCliente = array[1..n] of Rcliente;

var
cliente: tCliente;
opcion:integer;
procedure carga(var cliente:tCliente;n:integer);
var
    i:integer;
begin
    for i:= 1 to n do
    begin
        writeln('id');
        readln(cliente[i].id);
        writeln('nombre');
        readln(cliente[i].nombre);
        writeln('direccion');
        readln(cliente[i].direccion);
        writeln('telefono');
        readln(cliente[i].telefono);
        writeln('meil');
        readln(cliente[i].meil);
    end;   
end;

procedure leer(cliente:tCliente;n:integer);
var
    i:integer;
begin
    for i:= 1 to n do
    begin
        writeln('id ',cliente[i].id);
        writeln('nombre ',cliente[i].nombre);
        writeln('direccion ',cliente[i].direccion);
        writeln('telefono ',cliente[i].telefono);
        writeln('meil ',cliente[i].meil);
    end;
end;

procedure consulta(cliente:tCliente;n:integer);
var
    i,id:integer;
    {ver:boolean;}

begin
    writeln('id?');
    readln(id);
    {ver:=false;}
    for i:= 1 to n do
    begin
        if (id = cliente[i].id) then
        begin
            writeln(cliente[i].nombre);
            writeln(cliente[i].direccion);
            writeln(cliente[i].telefono);
            writeln(cliente[i].meil);
            break;
        end;
    end;
end;

procedure modificar(var cliente:tCliente;n:integer);
var
    i,id:integer;
begin
    writeln('id?');
    readln(id);
    for i := 1 to n do
        begin
        if (id = cliente[i].id) then
            begin
            writeln('nombre ');
            readln(cliente[i].nombre);
            writeln('direccion ');
            readln(cliente[i].direccion);
            writeln('telefono ');
            readln(cliente[i].telefono);
            writeln('meil ');
            readln(cliente[i].meil);
            break;
            end;
        end;
end;

procedure guardar(cliente:tCliente;n:integer);
var
    i:integer;
    archivo: file of Rcliente;
begin
    assign(archivo,'clientes.dat');
    rewrite(archivo);
    for i:= 1 to n do
    begin
        write(archivo,cliente[i]);
    end;
    close(archivo);
    writeln('guardado');
end;

procedure cargarArchivo(var cliente:tCliente;n:integer);
var
    i:integer;
    archivo:file of Rcliente;
begin
    assign(archivo,'clientes.dat');
    reset(archivo);
    for i:= 1 to n do
        begin
            if not eof (archivo) then
            read(archivo, cliente[i])
            else
            begin
                break;
            end;
        end;
    close(archivo);
    writeln('cargado pa');
end;

begin
    repeat
        writeln('1.ingresar');
        writeln('2.leer');
        writeln('3.modificar');
        writeln('4.consultar');
        writeln('5.cargar');
        writeln('6.guardar');
        writeln('0');
        readln(opcion);

        case opcion of
            1:carga(cliente,n);
            2:leer(cliente,n);
            3:modificar(cliente,n);
            4:consulta(cliente,n);
            5:cargarArchivo(cliente,n);
            6:guardar(cliente,n);
        end;
    until (opcion=0);

end.