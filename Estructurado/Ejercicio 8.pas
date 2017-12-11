program sumatoria;
	uses crt;
	var termino:integer;


function valida(var rango:integer):boolean;
begin
	if ((rango>20) and (rango<1000))then valida:=true else valida:=false;
end;

function calcular(var num:integer):real;
var i:integer=0;
var res :real=0;
var pos :boolean = true;
begin
	while i<>num do
	begin
		if (pos) then
		begin
			res:=(res + (1/((i*2)+1)));
			pos:=false;
		end
		else
		begin
			res:=res - (1/((i*2)+1));
			pos:=true;
		end;
		i:=i+1;
	end;
	calcular:=(res*4);
end;

procedure pedirvalor(var numero:integer);
begin
	clrscr;
	writeln('Ingrese el numero de terminos a calcular: ');
	read(numero);
end;

procedure resultado(var n:integer);
begin
	if (valida(n)) then 
		writeln('El resultado de la operacion es: ', calcular(n))
	else
		writeln('El numero esta en un rango permitido');
end;



BEGIN
	pedirvalor(termino);
	resultado(termino);
repeat until keypressed;
END.