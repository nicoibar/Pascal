program f4;
const
n=3;

type
    Restudiantes= record
    id:integer;
    nombre:string;
    edad:integer;
    nota:integer;
end;
    Vestudiantes = array[1..n] of Restudiantes;
var
    estudiantes:Vestudiantes;

procedure guardar(var estudiantes:Vestudiantes;n:integer);
var
    i:integer;
    archivo: file of Restudiantes;

begin
    assign(archivo,'estudiantes.dat');
    rewrite(archivo);
    for i := 1 to n do
    begin
        write(archivo,estudiantes[i]);
    end;
    close(archivo);
    writeln('guardado');
end;

procedure cargarArchivo(estudiantes:Vestudiantes;n:integer);
var
    i:integer;
    archivo:file of Restudiantes;

begin
    assign(archivo,'estudiantes.dat');
    if IOResult <> 0 then
    begin
        Rewrite(archivo);
    end;
    reset(archivo);
    for i := 1 to n do
    begin
        if not eof (archivo) then
        begin
            read(archivo,estudiantes[i]);
        end
        else
        begin
            break;
        end;
    end;
    close(archivo);
end;  

procedure cargaDatos(var estudiantes:Vestudiantes;n:integer);
var
    i:integer;
begin
    for i:= 1 to n do
        begin
        if (estudiantes[i].id <=0) then
        begin
        writeln('id');
        readln(estudiantes[i].id);
        writeln('nombre');
        readln(estudiantes[i].nombre);
        writeln('edad');
        readln(estudiantes[i].edad);
        writeln('nota');
        readln(estudiantes[i].nota);

        end;
        end;
    guardar(estudiantes,n);
end;

procedure leer (estudiantes:Vestudiantes;n:integer);
var
    i:integer;
begin
    for i := 1 to n do
        begin
            if (estudiantes[i].id>0) then
            begin
                writeln('Id: ',estudiantes[i].id);
                writeln('Nombre: ',estudiantes[i].nombre);
                writeln('edad: ',estudiantes[i].edad);
                writeln('nota: ',estudiantes[i].nota);
            end;
        end;
end;

begin

    cargarArchivo(estudiantes,n);    
    leer(estudiantes,n);
    cargaDatos(estudiantes,n);

end.
