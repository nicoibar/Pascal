program E2;

var
    num: integer;

procedure potencia(n:integer);
var
    i:integer;
    res:longint;
begin
    res:= 1;
    
    for i:= 1 to 10 do
        begin
            res:= res*n;
            writeln(n,' elevado a ', i, ' es = ',res);
        end;
end;

function factorial(n:integer):integer;
var
    i:integer;
    res:longint;
begin
    res:=1;
    for i:=n downto 1 do
        res:= res *i;
    factorial:=res;
    writeln('el factorial de ',n,' es ',factorial);
end;

begin
    writeln('numero');
    readln(num);
    potencia(num);
    factorial(num);
    
end.