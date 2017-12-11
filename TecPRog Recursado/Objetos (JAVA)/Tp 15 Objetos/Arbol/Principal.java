package p2;

public class Principal {

	
	public static void main(String[] args) {
		Nodo aRaiz = new Nodo ("a", null); //La raiz no puede tener padre, por eso es el NULL
		Nodo b = new Nodo ("b",aRaiz); //                a
		Nodo c = new Nodo ("c",aRaiz);//          b      c        d
		Nodo d = new Nodo ("d",aRaiz);//              e     f
		Nodo e = new Nodo ("e",c);
		Nodo f = new Nodo ("f",c);

		aRaiz.AgregarHijos(b);
		aRaiz.AgregarHijos(c);
		aRaiz.AgregarHijos(d);
		c.AgregarHijos(e);
		c.AgregarHijos(f);

		
		System.out.println("Profundidad del nodo: "+e.Nivel());
		
		aRaiz.MostrarHijos();
		
	}

}
