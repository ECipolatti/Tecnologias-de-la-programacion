program vocales;
uses crt;
var cant : integer;
var frase : integer;

function vocal(x:char):boolean;
var b:boolean;
begin
	
	if ((x='a') or (x='e') or (x='i') or (x='o') or(x='u')) then b:=true else b:=false;
	vocal:=b;		
end;

function contar(fr:string):integer;
	var tam,i : integer;
	var v:boolean;
begin
	tam:=length(fr);
	for i:=0 to tam do
	begin
		v:=vocal(fr[i]);
		if v then cant:=cant+1;
		i:=i+1;
	end;
	contar:=cant;
end;

procedure ingresar(var fr:string);
begin
	clrscr;
	write('Ingrese una frase: ');
	readln(fr);
end;

procedure informar(var cant:integer);
begin
	clrscr;
	writeln('La cantidad de vocales de la frase es: ');
	write(cant);
end;

BEGIN
	ingresar(frase);
	contar(frase);
	informar(cant);
END.


