package p2;
import java.util.*;

public class Nodo extends Elemento {

  private Nodo padre;
  private Vector<Elemento> vHijos;

  
  public Nodo(String nombre, Nodo p){
	  super(nombre);
	  padre = p;
	  vHijos = new Vector<Elemento>();
  }

  public void AgregarHijos(Elemento hijo){
	  vHijos.add(hijo);
  }
  
  public void MostrarHijos() {
	  Integer prof = 0;
	  if(vHijos.size() == 0){
		  System.out.print("El nodo "+this.nombre+" es hoja");
	  }
	  else
		  System.out.println("los hijos del nodo: "+this.nombre +" son:" );
		  for (Elemento E: vHijos){
			  E.MostrarNodo();
	  }
  }
  public Integer Nivel(){
	  Integer niv = 1;
	  if (padre == null){
		return niv;
	  } else{
			niv = 1 + padre.Nivel();
			}
	  return niv;
		}



  
}