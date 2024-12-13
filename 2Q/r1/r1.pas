program r1;

const
    numA=2;

type
    tRAlumnos=record
    id:integer;
    nombre:string;
    edad,curso:integer;
end;

tAlumnos = array[1..numA] of tRAlumnos;

var
    alumnos:tAlumnos;
    option:integer;

procedure carga(var alumnos:tAlumnos;numA:integer);
var
    i:integer;
begin
    for i:= 1 to numA do
    begin
    write('id: ');
    readln(alumnos[i].id);
    write('nombre: ');
    readln(alumnos[i].nombre);
    write('edad: ');
    readln(alumnos[i].edad);
    write('curso: ');
    readln(alumnos[i].curso);
    end;
end;

procedure leer(alumnos:tAlumnos;numA:integer);
var
    i:integer;
begin
    for i:= 1 to numA do
    begin
    writeln('id: ',alumnos[i].id);
    writeln('nombre: ',alumnos[i].nombre);
    writeln('edad: ',alumnos[i].edad);
    writeln('curso: ', alumnos[i].curso);
    end;
end;

procedure modf(var alumnos:tAlumnos;numA:integer);
var
    i:integer;
    id:integer;
begin
    writeln('id?');
    readln(id);
    for i:= 1 to numA do
    begin
        if id = alumnos[i].id then
            begin
                write('nombre: ');
                readln(alumnos[i].nombre);
                write('edad: ');
                readln(alumnos[i].edad);
                write('curso: ');
                readln(alumnos[i].curso);
                exit;
            end;
        {if not id= alumnos[i].id then}
        writeln('no');
    end;
end;

procedure guardar(alumnos:tAlumnos;numA:integer);
var
    i:integer;
    archivo: file of tRAlumnos;
    begin
        assign(archivo,'alumnos.dat');
        rewrite(archivo);
        for i := 1 to numA do
            begin
                write(archivo,alumnos[i])
            end;
    close(archivo);
    writeln('guardado');
    end;
    
procedure cargarArchivo(var alumnos:tAlumnos;numA:integer);
var
    i:integer;
    archivo: file of tRAlumnos;
begin
    assign(archivo,'alumnos.dat');
    reset(archivo);
    for i:= 1 to numA do
    begin
        if not eof(archivo) then
            read(archivo,alumnos[i])
        else
            break;
    end;
    close(archivo);
    writeln('cargado');        
end;

begin
    repeat
        writeln('1.cargar');
        writeln('2.leer');
        writeln('3.modf');
        writeln('4.guardar');
        writeln('5.cargar');
        writeln('0');
        readln(option);
        case option of
            1:carga(alumnos,numA);
            2:leer(alumnos,numA);
            3:modf(alumnos,numA);
            4:guardar(alumnos,numA);
            5:cargarArchivo(alumnos,numA);
        end;
    until (option=0);

end.