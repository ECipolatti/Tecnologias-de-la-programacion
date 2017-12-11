PROGRAM NATURAL;
USES Crt;
VAR
numero:string;
p:integer;
PROCEDURE verificar_numero ( VAR num:string);
VAR long:integer;
BEGIN
long:=length(num);
If ( long>10 ) then
WRITE('Numero fuera de rango');
END;
PROCEDURE capicua (VAR n:string);
VAR i,cont:integer;
BEGIN
p:=length(n);
i:=1;
cont:=0;
While ( i<=p) do
BEGIN
If (n[i]=n[p]) then
BEGIN
cont:=cont+1;
END;
i:=i+1;
p:=p-1;
END;
If (cont-1 = p div 2) then
BEGIN
WRITELN ('El numero es capicua');
END
else
WRITELN ('El numero no es capicua');
END;
PROCEDURE mayor_cifra ( VAR nu:string);
VAR j,long,cantidad:integer;
VAR mayor:string;
BEGIN
long:=length(nu);
cantidad:=0;
mayor:='0';
For j:=1 to long do
BEGIN
If( (nu[j] > nu[j+1]) and (nu[j] >mayor) ) then
mayor:=nu[j];
END;
For j:=1 to long do
BEGIN
If (nu[j]=mayor) then
cantidad:=cantidad+1;
END;
WRITEln ('La mayor cifra es: ',mayor);
WRITE ('Las veces que aparece es: ',cantidad);
END;
PROCEDURE menor_cifra ( VAR nume:string);
VAR j,long,cantidad:integer;
VAR menor:string;
BEGIN
long:=length(nume);
cantidad:=0;
menor:='0';
For j:=1 to long do
BEGIN
If( (nume[j] < nume[j+1]) and (nume[j] < menor)) then
menor:=nume[j];
END;
For j:=1 to long do
BEGIN
If (nume[j]=menor) then
cantidad:=cantidad+1;
END;
WRITEln ('La menor cifra es: ',menor);
WRITE ('Las veces que aparece es: ',cantidad);
END;
PROCEDURE mas_cifra(VAR numero1:string);
VAR k,longi,canti,cantiaux:integer;
VAR mas,masaux:string;
BEGIN
longi:=length(numero1);
canti:=0;
For k:=1 to longi do
BEGIN
If (numero[k]=numero[k+1]) then
BEGIN
masaux:=numero[k];
cantiaux:=cantiaux + 1;
END;
END;
If (masaux > mas) then
BEGIN
mas:=masaux;
canti:=cantiaux;
END;
WRITEln('La cifra que mas aparece es: ',mas);
WRITE('La cantidad de apariciones es:',canti);
END;
BEGIN
CLRSCR;
WRITE ('Ingrese un numero: ');
READLN (numero);
verificar_numero(numero);
capicua(numero);
mayor_cifra(numero);
menor_cifra(numero);
mas_cifra(numero);
repeat until keypressed;
END.