program f2;

const
n = 200;

type
    RAlumnos = record
    dni: integer;
    nombre:string;
    apellido:string;
    curso:integer;
    anio:integer;
end;

talum = array[1..n] of RAlumnos;

var
    alumnos:talum;
    option: integer;


procedure guardar(alumnos:talum;n:integer);
    var
        i:integer;
        archivo: file of RAlumnos;
begin
    assign(archivo,'alumnos.dat');
    rewrite(archivo);
    for i :=1 to n do
    begin
        write(archivo, alumnos[i]);
    end;
    close(archivo);
    writeln('guardado');
end;

procedure cargarArchivo (var alumnos:talum;n:integer);
    var
        i:integer;
        archivo: file of RAlumnos;
begin
    assign(archivo,'alumnos.dat');
    reset(archivo);
    for i := 1 to n do
    begin
    if not eof (archivo) then
        begin
            read(archivo, alumnos[i]);
        end
    else
        begin
            break;
        end;
    end;
    close(archivo);
    writeln('cargado');
end;

procedure cargadatos (var alumnos:talum;n:integer);
    var
        i:integer;

begin
    for i := 1 to n do
    begin
        if (alumnos[i].dni <= 0) then
    begin
        writeln('ingrese dni');
        readln(alumnos[i].dni);
        writeln('ingrese nombre');
        readln(alumnos[i].nombre);
        writeln('ingrese apellido');
        readln(alumnos[i].apellido);
        writeln('ingrese curso');
        readln(alumnos[i].curso);
        writeln('ingrese anio');
        readln(alumnos[i].anio);
        break
    end;
    end;
    guardar(alumnos,n);
end;

procedure leer (alumnos:talum;n:integer);
    var
        i:integer;

begin
    for i := 1 to n do
    begin
        if (alumnos[i].dni > 0) then
        begin
            writeln('dni ',alumnos[i].dni);
            writeln('nombre ',alumnos[i].nombre);
            writeln('apellido ',alumnos[i].apellido);
            writeln('curso ',alumnos[i].curso);
            writeln('anio ',alumnos[i].anio);
        end;
        end;
end;

procedure buscar(alumnos:talum;n:integer);
    var
        i:integer;
        dni:integer;

begin
    writeln('dni?');
    readln(dni);
    for i := 1 to n do
    begin
        if (dni = alumnos[i].dni) and (dni > 0) then
        begin
            writeln('nombre ',alumnos[i].nombre);
            writeln('apellido ',alumnos[i].apellido);
            writeln('curso ',alumnos[i].curso);
            writeln('anio ',alumnos[i].anio);
            break;
        end;
    end;
end;

procedure modificar(var alumnos:talum;n:integer);
    var
        i:integer;
        dni:integer;

begin
    begin
    writeln('dni?');
    readln(dni);
    for i := 1 to n do
    begin
        if (dni = alumnos[i].dni) and (dni > 0) then
        begin
            writeln('ingrese nombre');
            readln(alumnos[i].nombre);
            writeln('ingrese apellido');
            readln(alumnos[i].apellido);
            writeln('ingrese curso');
            readln(alumnos[i].curso);
            writeln('ingrese anio');
            readln(alumnos[i].anio);
        break;
        end;
    end;
    guardar(alumnos,n);
    end;
end;

procedure eliminar(var alumnos:talum;n:integer);
    var
        i:integer;
        dni:integer;

begin
    writeln('inserte dni a eliminar');
    readln(dni);
    for i := 1 to n do
    begin
        if (dni = alumnos[i].dni) and (dni > 0) then
        begin
            alumnos[i].dni := 0;
            break;
        end;
    end;
    guardar(alumnos,n);
end;

begin
    cargarArchivo(alumnos,n);
    repeat
        writeln('1.ingresar');
        writeln('2.leer');
        writeln('3.modificar');
        writeln('4.buscar');
        writeln('5.eliminar');
        writeln('0');
        readln(option);

        case option of
            1:cargadatos(alumnos,n);
            2:leer(alumnos,n);
            3:modificar(alumnos,n);
            4:buscar(alumnos,n);
            5:eliminar(alumnos,n);
        end;
    until (option = 0);
end.
