package barcos;
import java.util.Vector;

public class Cliente {

    private String nombre;
    
  private Vector<Alquiler>  myAlquiler;

public Cliente(String nombre) {
	super();
	this.nombre = nombre;
	myAlquiler = new Vector<Alquiler>();
}

	public void add_alquiler(Alquiler _alquiler){
	myAlquiler.add(_alquiler);
}
  
	public String toString(){
		return nombre;
	}

}