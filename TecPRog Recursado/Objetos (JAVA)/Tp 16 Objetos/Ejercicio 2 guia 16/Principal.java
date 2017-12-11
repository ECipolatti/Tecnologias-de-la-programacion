package p1;

public class Principal {
	public static void main(String[] args) {
	Botonera b = new Botonera(5);
	System.out.println("Inicialmente :"+b);
	b.pulsar(3);
	System.out.println("Se pulsa el 3:"+b);
	b.pulsar(1);
	System.out.println("Se pulsa el 1:"+b);
	}
}
