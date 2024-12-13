program r1;

const
    numA = 2;

type
    tRAlumnos = record
        id: integer;
        nombre: string;
        edad, curso: integer;
    end;

tAlumnos = array[1..numA] of tRAlumnos;

var
    alumnos: tAlumnos;
    option: integer;

procedure carga(var alumnos: tAlumnos; numA: integer);
var
    i: integer;
begin
    for i := 1 to numA do
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

procedure leer(alumnos: tAlumnos; numA: integer);
var
    i: integer;
begin
    for i := 1 to numA do
    begin
        writeln('id: ', alumnos[i].id);
        writeln('nombre: ', alumnos[i].nombre);
        writeln('edad: ', alumnos[i].edad);
        writeln('curso: ', alumnos[i].curso);
    end;
end;

procedure modf(var alumnos: tAlumnos; numA: integer);
var
    i: integer;
    id: integer;
begin
    writeln('id?');
    readln(id);
    for i := 1 to numA do
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
    end;
    writeln('no se encontró el id');
end;

procedure guardarEnArchivo(alumnos: tAlumnos; numA: integer);
var
    archivo: file of tRAlumnos;
    i: integer;
begin
    assign(archivo, 'alumnos.dat');
    rewrite(archivo);
    for i := 1 to numA do
    begin
        write(archivo, alumnos[i]);
    end;
    close(archivo);
    writeln('Datos guardados en alumnos.dat');
end;

procedure cargarDeArchivo(var alumnos: tAlumnos; numA: integer);
var
    archivo: file of tRAlumnos;
    i: integer;
begin
    assign(archivo, 'alumnos.dat');
    reset(archivo);
    for i := 1 to numA do
    begin
        if not eof(archivo) then
            read(archivo, alumnos[i])
        else
            break;
    end;
    close(archivo);
    writeln('Datos cargados desde alumnos.dat');
end;

begin
    repeat
        writeln('1. Cargar');
        writeln('2. Leer');
        writeln('3. Modificar');
        writeln('4. Guardar en archivo');
        writeln('5. Cargar desde archivo');
        writeln('0. Salir');
        readln(option);
        case option of
            1: carga(alumnos, numA);
            2: leer(alumnos, numA);
            3: modf(alumnos, numA);
            4: guardarEnArchivo(alumnos, numA);
            5: cargarDeArchivo(alumnos, numA);
        end;
    until (option = 0);
end.