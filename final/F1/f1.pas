program f1;

const
n = 200;

type
    Rproductos = record
    id: integer;
    nombre:string;
    descrip:string;
    cant:integer;
    precio:real;
end;

tproduct = array[1..n] of Rproductos;

var
    productos:tproduct;
    option: integer;


procedure guardar(productos:tproduct;n:integer);
    var
        i:integer;
        archivo: file of Rproductos;
begin
    assign(archivo,'productos.dat');
    rewrite(archivo);
    for i :=1 to n do
    begin
        write(archivo, productos[i]);
    end;
    close(archivo);
    writeln('guardado');
end;

procedure cargarArchivo (var productos:tproduct;n:integer);
    var
        i:integer;
        archivo: file of Rproductos;
begin
    assign(archivo,'productos.dat');
    reset(archivo);
    for i := 1 to n do
    begin
    if not eof (archivo) then
        begin
            read(archivo, productos[i]);
        end
    else
        begin
            break;
        end;
    end;
    close(archivo);
    writeln('cargado');
end;

procedure cargadatos (var productos:tproduct;n:integer);
    var
        i:integer;

begin
    for i := 1 to n do
    begin
        if (productos[i].id <= 0) then
    begin
        writeln('ingrese id');
        readln(productos[i].id);
        writeln('ingrese nombre');
        readln(productos[i].nombre);
        writeln('ingrese descrip');
        readln(productos[i].descrip);
        writeln('ingrese cant');
        readln(productos[i].cant);
        writeln('ingrese precio');
        readln(productos[i].precio);
        break
    end;
    end;
    guardar(productos,n);
end;

procedure leer (productos:tproduct;n:integer);
    var
        i:integer;

begin
    for i := 1 to n do
    begin
        if (productos[i].id > 0) then
        begin
            writeln('id ',productos[i].id);
            writeln('nombre ',productos[i].nombre);
            writeln('descrip ',productos[i].descrip);
            writeln('cant ',productos[i].cant);
            writeln('precio ',productos[i].precio:0:2);
        end;
        end;
end;

procedure buscar(productos:tproduct;n:integer);
    var
        i:integer;
        id:integer;

begin
    writeln('id?');
    readln(id);
    for i := 1 to n do
    begin
        if (id = productos[i].id) and (id > 0) then
        begin
            writeln('nombre ',productos[i].nombre);
            writeln('descrip ',productos[i].descrip);
            writeln('cant ',productos[i].cant);
            writeln('precio ',productos[i].precio:0:2);
            break;
        end;
    end;
end;

procedure modificar(var productos:tproduct;n:integer);
    var
        i:integer;
        id:integer;

begin
    begin
    writeln('id?');
    readln(id);
    for i := 1 to n do
    begin
        if (id = productos[i].id) and (id > 0) then
        begin
            writeln('ingrese nombre');
            readln(productos[i].nombre);
            writeln('ingrese descrip');
            readln(productos[i].descrip);
            writeln('ingrese cant');
            readln(productos[i].cant);
            writeln('ingrese precio');
            readln(productos[i].precio);
        break;
        end;
    end;
    guardar(productos,n);
    end;
end;

procedure eliminar(var productos:tproduct;n:integer);
    var
        i:integer;
        id:integer;

begin
    writeln('inserte id a eliminar');
    readln(id);
    for i := 1 to n do
    begin
        if (id = productos[i].id) and (id > 0) then
        begin
            productos[i].id := 0;
            break;
        end;
    end;
    guardar(productos,n);
end;

begin
    cargarArchivo(productos,n);
    repeat
        writeln('1.ingresar');
        writeln('2.leer');
        writeln('3.modificar');
        writeln('4.buscar');
        writeln('5.eliminar');
        writeln('0');
        readln(option);

        case option of
            1:cargadatos(productos,n);
            2:leer(productos,n);
            3:modificar(productos,n);
            4:buscar(productos,n);
            5:eliminar(productos,n);
        end;
    until (option = 0);
end.