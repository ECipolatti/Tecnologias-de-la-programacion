package trabajadores;
import java.util.Vector;

public class Empresa {

  private String nombre;
  private Vector<Empleado>  myEmpleado;

  public Empresa(String _nombre){
	  this.nombre = _nombre;
	  this.myEmpleado = new Vector<Empleado>();
  }
}