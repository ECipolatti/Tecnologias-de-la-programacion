PROGRAM diccionario;
	uses crt;
	var fra :string;
	
	
Function buscar(var pal:string; var vec: subrange):string;
 var i:integer =0;
begin
	while (i <> sizeof (vec)) do
	begin
		if (pal = vec[i]) then Break;
		
	end;
	if(i= sizeof(vec)) then 
		informar(pal);
end;

Function separa(var oracion:string,var v: subrange):string;
	var ch:char;
	var palabra:string;
	var tam: integer =0;
	var r:integer =0;
	var s:integer =0;
begin 
	tam := sizeof(oracion);
	while (r <> tam) do
	begin
		ch:= Ord(oracion[r]);
		if (ch = 32) then 
			for t=s to r-1 do
			begin 
				palabra[t]:=oracion[r];
			end;
			buscar(palabra, vector);
			s:=r;
	end;
end;

procedure informar(var word:string);
begin
	WRITELN('La palabra ');
	WRITE(word);
	WRITE(' no fue encontrada');
end;

procedure obtenerfrase( var frase: string);
begin
	CLRSCR;
	WRITELN('Escriba una frase: ');
	READLN(frase);
end;
	
BEGIN
	type vector=array [la, el, capaz, lucas, auto, camina] as string;
	obtenerfrase(fra);
	separa(fra);
	
	
	
repeat until keypressed
END.