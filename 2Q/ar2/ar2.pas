program ar2;

const
    n = 2;

type
    Rproductos= record
    id:integer;
    descripcion:string;
    precio,stock:integer;
end;

tproduct = array [1..n] of Rproductos;

var
    productos:tproduct;
    opcion:integer;

procedure carga(var productos:tproduct; n:integer);
var
    i:integer;
    {archivo: file of Rproductos;}
begin
    {assign(archivo,'productos.dat');
    rewrite(archivo);}
    for i := 1 to n do
        begin
            write('ingrese id ');
            readln(productos[i].id);
            write('ingrese descrip ');
            readln(productos[i].descripcion);
            write('ingrese precio ');
            readln(productos[i].precio);
            write('ingrese stock ');
            readln(productos[i].stock);   
        end;
    {close(archivo);
    Append(archivo,'productos.dat');
    Write(archivo);
    close(archivo);}
end;

procedure leer(productos:tproduct;n:integer);
var
    i:integer;
    {archivo: file of Rproductos;}
begin
    {assign(archivo,'productos.dat');
    reset(archivo);}
    for i := 1 to n do
    begin
        writeln('id ', productos[i].id);
        writeln('descrip ', productos[i].descripcion );
        writeln('precio ',productos[i].precio);
        writeln('stock ',productos[i].stock);
    end;
    {close(archivo);}
end;

procedure vender(var productos:tproduct;n:integer);
var
    i,j:integer;
    cant:integer;
    id:integer;
    ver:boolean;
    {archivo: file of Rproductos;}
begin
    {assign(archivo,'productos.dat');
    rewrite(archivo);}
    writeln('id? ');
    readln(id);
    
    for i:= 1 to n do
    begin
        if (id=productos[i].id) then
        begin
            ver:=True;
            j:=i;
        break;
        end;
        if not (id=productos[i].id) then
        begin
            ver:=False;
        end;
    end;
    if (ver = True) then
    begin
        writeln('cuantos de ', productos[j].descripcion,' queres? putita');
        readln(cant);
        productos[j].stock := productos[j].stock - cant;  
    end;
    if not (ver= True) then
    begin
        writeln('no');
    end;
    {close(archivo);}
end;

procedure guardar(productos:tproduct;n:integer);
var
    i:integer;
    archivo: file of Rproductos;
    begin
        assign(archivo,'productos.dat');
        rewrite(archivo);
        for i := 1 to n do
            begin
                write(archivo,productos[i])
            end;
    close(archivo);
    writeln('guardado');
    end;

procedure cargarArchivo(var productos:tproduct;n:integer);
var
    i:integer;
    archivo: file of Rproductos;
begin
    assign(archivo,'productos.dat');
    reset(archivo);
    for i:= 1 to n do
    begin
        if not eof(archivo) then
            read(archivo,productos[i])
        else
            break;
    end;
    close(archivo);
    writeln('cargado');        
end;

begin

    repeat
        writeln('1.ingresar');
        writeln('2.leer');
        writeln('3.vender');
        writeln('4.cargar');
        writeln('5.guardar');
        writeln('0');
        readln(opcion);

        case opcion of
            1:carga(productos,n);
            2:leer(productos,n);
            3:vender(productos,n);
            4:cargarArchivo(productos,n);
            5:guardar(productos,n);
        end;
    until(opcion=0);
     
end.
