(*Ejercicio 7 de pascal*)
PROGRAM fecha;
	uses Crt;
	var dd, mm, aaaa, dd2, mm2, aaaa2 :integer;

procedure CargarFecha( var d, m, a: integer);
begin
	CLRSCR;
	writeln( 'Ingrese dia mes y año en formato dd,mm,aaaa');
	read (d);
	write('/');
	read (m);
	write('/');
	read (a);
end;

function CalcularBis(var a: integer): boolean;
begin
	if ((a mod 4)<> 0 ) and ((a mod 100) = 0 ) or ((a mod 400) = 0) then CalcularBis := true
	else
	CalcularBis := false;
end;

procedure CalculaFecha (var d,m,a :integer);
begin
	if (m=12) and (d = 31) then
	begin
		a := a+1;
		d := 1;
		m := 1;
	end
	else
		if (m = 12) and (d <>31) then d := d+1
else
if (m =2) and (d=28) and (CalcularBis(a) =true) then d :=29
else
if (m =2) and (d=28) and (CalcularBis(a) =false) then
begin
	d :=1;
	m := 3;
end
else
if ((m = 1) or (m = 3) or (m = 5) or (m = 7) or (m = 8)or (m = 10) ) and ( d = 31)then
	begin
		m := m+1;
		d := 1;
	end
	else
		if ((m = 4) or (m = 6) or (m = 9) or (m = 11)) and ( d = 30)then
	begin
		m := m+1;
		d := 1;
end
else
if (d<> 30) then d:= d+1;

	dd := d;
	mm := m;
	aaaa := a;
end;

procedure Mostrar (d,m,a : integer);
begin
	writeln ('La fecha calculada es: ');
	CalculaFecha(d,m,a);
	write(d);
	write('/');
	write (m);
	write('/');
	write (a);
end;

BEGIN
	CargarFecha(dd,mm,aaaa);
	Mostrar(dd,mm,aaaa);
REPEAT Until Keypressed;
END.
