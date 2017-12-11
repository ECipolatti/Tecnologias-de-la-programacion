PROGRAM grados;
        uses crt;
        var
        f,c :integer;
function FtoC(fahrenheit : integer) : integer;
begin
        FtoC:=round(5/9*(fahrenheit - 32.0) )
end;

procedure pedirvalor(var x: integer);
begin
        CLRSCR;
        WRITE('Ingrese la temperatura en Fahrenheit: ');
        READLN(x);
end;

procedure calcular(var y: integer);
begin
        CLRSCR;
        WRITELN('Conversion de temperaturas: ');
        WRITELN('(Fahranheit: ', y :5);
        WRITELN('Celsius: ', FtoC(y) :5);
end;


BEGIN
	pedirvalor(f);
	calcular(f);

REPEAT until keypressed;
END.
