PROGRAM verificar;
	uses crt;
	var X: char;
	var i: integer;
	
function define(var a:char):boolean;
begin
	i := Ord(a)-48;
	if ((i>=0) and (i<10)) then define:=true else define:=false;
end;

procedure caracter(var cha:char);
begin
	if (define(cha)) then 
		WRITELN ('El caracter ingresado es un numero')
	else
		WRITELN ('El caracter ingresado NO ES UN NUMERO!');
end;

procedure pidecaracter(var ch:char);
begin
	CLRSCR;
	WRITE('Ingrese un caracter: ');
	READLN (ch);
end;
	
	
BEGIN 
	pidecaracter(X);
	caracter(X);
repeat until keypressed
END.
	
	