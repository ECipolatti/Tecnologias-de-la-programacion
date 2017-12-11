 
PROGRAM grados;
USES Crt;
 VAR f, c : integer;
FUNCTION FtoC( fahrenheit : integer ) : integer;
BEGIN
	FtoC:= round( 5 / 9 * ( fahrenheit - 32.0 ) )
END;

PROCEDURE pedirValor ( VAR x : integer );
BEGIN
	CLRSCR;
	WRITE ( 'Ingrese la temperatura en Fahrenheid: ' );
	READLN ( x );
END;

PROCEDURE calcular ( VAR y : integer );
BEGIN
	CLRSCR;
	WRITELN( 'Conversion de temperaturas: ' );
	WRITELN( ' Fahrenheit: ', y : 5 );
	WRITELN( ' Celsius: ', FtoC ( y ) : 5 );
END;


BEGIN
	pedirValor ( f );
	calcular ( f );
	REPEAT Until Keypressed;
END.
