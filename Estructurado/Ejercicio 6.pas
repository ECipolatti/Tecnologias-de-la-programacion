(*Ejercicio 6 de pascal*)
PROGRAM cuentavocales;
	uses crt;
	var frase :string;
	
function cvocales(var fra:string): integer;
	var l :char;
	var contador :integer=0;
	var i, c, tam:integer;
begin
	tam := sizeof(fra)-1;
	for i:=0 to tam do
	begin
		l:= fra[i];
		c:=Ord(l);
		if( (c = 97) OR (c = 101) OR (c = 105) OR (c = 111) OR (c = 117) ) then
			contador := contador + 1;
	end;
	cvocales:=contador;
end;

procedure contar(var count:string);
begin 
	WRITELN('La cantidad de vocales es: ', cvocales(count));
end;

procedure pedirfrase(var f:string);
begin 
	CLRSCR;
	WRITELN ('Ingrese la frase a la cual le quiere contar las vocales: ');
	READ(f);
end;

BEGIN
	pedirfrase(frase);
	contar(frase);
	
REPEAT until keypressed;
END.

