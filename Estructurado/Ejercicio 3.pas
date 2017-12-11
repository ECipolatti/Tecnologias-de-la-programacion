PROGRAM prisma;
	uses crt;
	var aba, ala, alt: integer;

function calculararea(var a, b, c :integer):integer;
begin
	calculararea:=(a*2+b*4);
end;	

function calcularvolumen(var t, u :integer):integer;
begin
	calcularvolumen:=(t*u);
end;

procedure mostrar(d, f, g:integer);
begin 
	WRITELN('El area de prisma es : ', calculararea(d, f, g));
	WRITELN('El volumen del prisma es: ', calcularvolumen(d,g));

end;

procedure pedirvalores( var x,y,z :integer);
begin
	CLRSCR;
	WRITE('Escriba el area de la base: ');
	READLN(x);
	WRITE('Escriba el area de los lados: ');
	READLN(y);
	WRITE('Escriba la altura: ');
	READLN(z);
end;

BEGIN
	pedirvalores(aba, ala, alt);
	mostrar(aba, ala, alt);
REPEAT until keypressed;
END.