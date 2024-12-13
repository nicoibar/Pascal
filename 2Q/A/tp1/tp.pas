program tp1;

uses crt;

type
    cliente = record
        id: integer;
        nombre: string;
        direccion: string;
        telefono: string;
        correo: string;
    end;

var
    archivo: file of cliente;
    opcion: integer;

function comprobar(id: integer): boolean;
var
    checkid: cliente;
begin 
    Assign(archivo, 'clientesGuardados.dat');
    Reset(archivo);
    comprobar := False;

    while not EOF(archivo) do
    begin
        Read(archivo, checkid);
        if checkid.id = id then
        begin
            comprobar := True;
            break;
        end;
    end;
    Close(archivo);
end;

procedure alta;
var
    comprobador: boolean;
    clientedatos: cliente;
begin
    Assign(archivo, 'clientesGuardados.dat');
    Reset(archivo);
    writeln('ID: '); 
    readln(clientedatos.id);

    comprobador := comprobar(clientedatos.id);

    if (comprobador = False) then
    begin
        writeln('Nombre: '); 
        readln(clientedatos.nombre);
        writeln('Direccion: '); 
        readln(clientedatos.direccion);
        writeln('Telefono: '); 
        readln(clientedatos.telefono);
        writeln('Correo: '); 
        readln(clientedatos.correo);

        Close(archivo);
        Assign(archivo, 'clientesGuardados.dat'); 
        Append(archivo); 
        Write(archivo, clientedatos); 
        writeln('Se guardo el cliente'); 
    end
    else
    begin
        writeln('Ya hay un cliente con esa ID');
    end;

    Close(archivo);
end;

procedure consulta;
var
    clientedatos: cliente;
    encontrado: boolean;
begin
    Assign(archivo, 'clientesGuardados.dat');
    Reset(archivo);

    writeln('Ingrese el ID del cliente: ');
    readln(clientedatos.id);

    encontrado := False;
    while not EOF(archivo) do
    begin
        Read(archivo, clientedatos);
        if clientedatos.id = clientedatos.id then
        begin
            writeln('Nombre: ', clientedatos.nombre);
            writeln('Direccion: ', clientedatos.direccion);
            writeln('Telefono: ', clientedatos.telefono);
            writeln('Correo: ', clientedatos.correo);
            encontrado := True;
            break;
        end;
    end;

    if not encontrado then
        writeln('El cliente no existe.');

    Close(archivo);
end;

procedure modificar;
var
    clientedatos: cliente;
    temp: cliente;
    encontrado: boolean;
    opcion: integer;
begin
    Assign(archivo, 'clientesGuardados.dat');
    Reset(archivo);
    
    writeln('Ingrese el ID del cliente: '); 
    readln(clientedatos.id);

    encontrado := False;

    while not EOF(archivo) do
    begin
        Read(archivo, temp);
        if temp.id = clientedatos.id then
        begin
            encontrado := True;
            break;
        end;
    end;

    if (encontrado) then
    begin
        writeln('Ingrese que dato quiere modificar:');
        writeln('1. Nombre');
        writeln('2. Direccion');
        writeln('3. Telefono');
        writeln('4. Correo');
        readln(opcion);

        case opcion of
            1: begin
                writeln('Ingrese nombre nuevo:'); 
                readln(temp.nombre);
            end;
            2: begin
                writeln('Ingrese direccion nueva:'); 
                readln(temp.direccion);
            end;
            3: begin
                writeln('Ingrese telefono nuevo:'); 
                readln(temp.telefono);
            end;
            4: begin
                writeln('Ingrese correo nuevo:'); 
                readln(temp.correo);
            end;
        else
            writeln('Opción no válida.');
        end;

        // Debes guardar el archivo de nuevo
        Seek(archivo, FilePos(archivo) - 1); // Volver a la posición del registro
        Write(archivo, temp);
        writeln('Datos actualizados.');
    end
    else
    begin
        writeln('El cliente no existe.');
    end;

    Close(archivo);
end;

procedure lista;
var
    clientedatos: cliente;
begin
    Assign(archivo, 'clientesGuardados.dat');
    Reset(archivo);

    while not EOF(archivo) do
    begin
        Read(archivo, clientedatos);
        writeln('ID: ', clientedatos.id);
        writeln('Nombre: ', clientedatos.nombre);
        writeln('Direccion: ', clientedatos.direccion);
        writeln('Telefono: ', clientedatos.telefono);
        writeln('Correo: ', clientedatos.correo);
        writeln('------------------------------');
    end;

    Close(archivo);
end;

begin    
    repeat
        clrscr;
        
        writeln('1. Alta de cliente');
        writeln('2. Consulta de un cliente');
        writeln('3. Modificacion de cliente');
        writeln('4. Lista de clientes');
        writeln('5. Salir');
        readln(opcion);

        case opcion of
            1: alta;
            2: consulta;
            3: modificar;
            4: lista;
            5: writeln('Saliendo...');
        else
            writeln('Opcion no valida.');
        end;
    until (opcion = 5);

end.