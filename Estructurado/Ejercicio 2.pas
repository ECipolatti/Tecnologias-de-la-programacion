PROGRAM divisor;
 uses crt;
 var x,y : real;
 
 function escero(var f:real):boolean;
 begin
	if(f=0.0) then escero:=true else escero:=false;
 end;
 
 
 function dividir(var a, b: real): real;
 begin
	dividir:=(a/b);
 end;
 
 procedure informar(var r,s:real);
 begin
	if (escero(s)) then
		(write('No se puede dividir por cero'))
	else
		write('La divicion es: ', dividir(r,s):5);
 
 end;
 
 procedure pedirvalores(var c,d : real);
 begin
	CLRSCR;
    WRITE('Ingrese el numerador: ');
    READLN(c);
	WRITE('Ingrese el denominador: ');
    READLN(d);
 end;
 
 
 BEGIN
	pedirvalores(x,y);
	informar(x,y);
 repeat until keypressed
 END.