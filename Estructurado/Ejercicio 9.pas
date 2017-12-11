program primos;
	uses crt;
	var numero:integer;
	
function esunodostres(var x:integer):boolean;
begin
	if ((x=1) or (x=2) or (x=3)) then esunodostres:=true else esunodostres:=false;
end;	

function espar(var p:integer):boolean;
var pa: real;
begin
	pa:= (p mod 2);
	if (pa=0) then espar:=true else espar:=false;
end;

function calcula(var num:integer):boolean;
var raiz, resto:real;
var divisor:integer;
var resul:boolean=false;
begin
	raiz:=sqrt(num);
	divisor:= round(raiz);
	while (divisor <> num) do
	begin 
		resto:=(num mod divisor);
		if (resto=0.0) then resul:=true;
		divisor:=divisor+1;
	end;
	calcula:=resul;
end;

procedure pedirvalor(var x:integer);
begin
	clrscr;
	writeln('Ingrese el numero para comprobar si es primo o no');
	read(x);
end;

procedure verifica(var n:integer);
begin
	if (esunodostres(n)) then writeln('ES PRIMO')
	else if (espar(n)) then writeln('NO ES PRIMO')
	else if (calcula(n)) then writeln('NO ES PRIMO') else writeln('ES PRIMO');
end;

BEGIN
	pedirvalor(numero);
	verifica(numero);
repeat until keypressed;
END.