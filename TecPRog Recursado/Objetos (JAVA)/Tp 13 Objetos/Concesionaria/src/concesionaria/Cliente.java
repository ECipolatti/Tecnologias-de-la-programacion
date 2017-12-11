package concesionaria;
import java.util.Vector;

public class Cliente extends Persona {

    public Vector<Venta>  Venta;

	public Cliente(String apellido, String nombre, String dni,
			Vector<concesionaria.Venta> venta) {
		super(apellido, nombre, dni);
		Venta = venta;
	}
  
	public void add_venta(Venta v){Venta.add(v);}
	
}