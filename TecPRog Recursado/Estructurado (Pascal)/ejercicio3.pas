program vocales;
uses scr;
var cant : integer;
var frase : integer;


function contar(Var fr:string):integer;
	var tam,i : integer;
	var v:boolean;
begin
	tam:=sizeof(fr);
	while (i<>tam) do
	begin
		v:=vocal(fr[i])
		if v then cant:=cant+1
		i:=i+1;
	end;
	contar:=cant;
end;

function vocal(var x:char):boolean;
begin
	var b:boolean;
	if ((x='a') or (x='e') or (x='i') or (x='o') or(x='u')) then b:=true else b:=false;

	vocal:=b;		
end;


procedure ingresar(fr:string);
begin
	clrscr;
	write('Ingrese una frase: ');
	readln(fr);
end;

procedure informar(cant:integer);
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


