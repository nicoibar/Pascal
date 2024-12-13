program GestionDeClientes;

uses crt;

type
  TCliente = record
    codigo: integer;
    nombre: string[50];
    direccion: string[100];
    telefono: string[15];
    email: string[50];
  end;

var
  archivo: file of TCliente;
  cliente: TCliente;

// Procedimiento para alta de cliente
procedure AltaCliente;
var
  cliente: TCliente;
begin
  assign(archivo, 'clientes.dat');
  reset(archivo);
  seek(archivo, filesize(archivo)); // Mover al final del archivo para agregar
  writeln('Ingrese los datos del cliente:');
  write('Codigo: '); readln(cliente.codigo);
  write('Nombre: '); readln(cliente.nombre);
  write('Direccion: '); readln(cliente.direccion);
  write('Telefono: '); readln(cliente.telefono);
  write('Email: '); readln(cliente.email);
  
  write(archivo, cliente);
  close(archivo);
  writeln('Cliente agregado correctamente.');
end;

// Procedimiento para listar todos los clientes
procedure ListarClientes;
begin
  assign(archivo, 'clientes.dat');
  reset(archivo);
  
  writeln('--- LISTADO DE CLIENTES ---');
  while not eof(archivo) do
  begin
    read(archivo, cliente);
    writeln('Codigo: ', cliente.codigo);
    writeln('Nombre: ', cliente.nombre);
    writeln('Direccion: ', cliente.direccion);
    writeln('Telefono: ', cliente.telefono);
    writeln('Email: ', cliente.email);
    writeln('-------------------------------');
  end;
  
  close(archivo);
end;

// Procedimiento para buscar un cliente por código
procedure BuscarCliente;
var
  codigoBuscar: integer;
  encontrado: boolean;
begin
  encontrado := false;
  assign(archivo, 'clientes.dat');
  reset(archivo);
  
  write('Ingrese el codigo del cliente a buscar: ');
  readln(codigoBuscar);
  
  while not eof(archivo) do
  begin
    read(archivo, cliente);
    if cliente.codigo = codigoBuscar then
    begin
      writeln('Cliente encontrado:');
      writeln('Codigo: ', cliente.codigo);
      writeln('Nombre: ', cliente.nombre);
      writeln('Direccion: ', cliente.direccion);
      writeln('Telefono: ', cliente.telefono);
      writeln('Email: ', cliente.email);
      encontrado := true;
      break;
    end;
  end;
  
  if not encontrado then
    writeln('Cliente no encontrado.');
  
  close(archivo);
end;

// Procedimiento para modificar un cliente
procedure ModificarCliente;
var
  codigoBuscar: integer;
  encontrado: boolean;
  pos: integer;
begin
  encontrado := false;
  assign(archivo, 'clientes.dat');
  reset(archivo);
  
  write('Ingrese el codigo del cliente a modificar: ');
  readln(codigoBuscar);
  
  while not eof(archivo) do
  begin
    pos := filepos(archivo); // Guardar la posición actual
    read(archivo, cliente);
    if cliente.codigo = codigoBuscar then
    begin
      writeln('Cliente encontrado. Ingrese los nuevos datos:');
      write('Nombre: '); readln(cliente.nombre);
      write('Direccion: '); readln(cliente.direccion);
      write('Telefono: '); readln(cliente.telefono);
      write('Email: '); readln(cliente.email);
      
      seek(archivo, pos); // Volver a la posición del registro
      write(archivo, cliente); // Reescribir el registro modificado
      writeln('Cliente modificado correctamente.');
      encontrado := true;
      break;
    end;
  end;
  
  if not encontrado then
    writeln('Cliente no encontrado.');
  
  close(archivo);
end;

// Programa principal
var
  opcion: char;

begin
  repeat
    writeln('--- GESTION DE CLIENTES ---');
    writeln('1. Alta de clientes');
    writeln('2. Buscar cliente');
    writeln('3. Modificar cliente');
    writeln('4. Listar todos los clientes');
    writeln('0. Salir');
    write('Seleccione una opcion: ');
    readln(opcion);
    
    case opcion of
      '1': AltaCliente;
      '2': BuscarCliente;
      '3': ModificarCliente;
      '4': ListarClientes;
    end;
    
  until opcion = '0';
  
  writeln('Programa terminado.');
end.