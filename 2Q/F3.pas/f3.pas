program f3;
type
Rusuario = record
nombre:string;
edad:integer;
end;

var
    usuario:Rusuario;

procedure guardar(usuario:Rusuario);
var
    archivo: file of Rusuario;
begin
    assign(archivo,'personas.dat');
    rewrite(archivo);
    write(archivo,usuario);
    close(archivo);
    writeln('guardado');
end;

procedure cargaDatos(var usuario:Rusuario);
begin
    writeln('ingrese nombre');
    readln(usuario.nombre);
    writeln('edad');
    readln(usuario.edad);
    guardar(usuario);
end;

procedure leer(usuario:Rusuario);
begin
    writeln('nombre ', usuario.nombre);
    writeln('edad',usuario.edad);
end;

begin
    usuario.nombre:='n';
    usuario.edad:=1;
    {cargarArchivo(usuario);}
    cargaDatos(usuario);
    leer(usuario);

end.