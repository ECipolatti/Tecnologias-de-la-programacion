program binario;
uses crt;
var b1,b2:string[20];

FUNCTION suma(var bin1,bin2 : string ) : string;
VAR sumabin : string[20];
VAR i,k : integer;
BEGIN
	i:=length(bin1);
	For k:=i to 1 do 
	BEGIN
		If( (bin1[k]='0') and ((bin2[k]='0')or (bin2[k]=' '))) then sumabin[k]:='0';
		If( (bin1[k]='1') and ((bin2[k]='0') or (bin2[k]= ' '))) then sumabin[k]:='1';
		If( (bin1[k]='1') and (bin2[k]='1')) then 
		BEGIN
			bin1[k-1]:='1';
			sumabin[k]:='0';
		END;
		suma:=sumabin;
	END;
END;

procedure pedirvalores(var bi1,bi2: string);
begin
	CLRSCR;
	writeln('ingrese el primer valor binario: ');
	read (bi1);
	writeln('ingrese el segundo valor binario: ');
	read (bi2);
end;

procedure calcula(ba1,ba2:string);
begin
	writeln('la suma de los valores binarios es: ', suma(ba1,ba2));
end;

BEGIN
	pedirvalores(b1,b2);
	calcula(b1,b2);
repeat until keypressed;
END.

