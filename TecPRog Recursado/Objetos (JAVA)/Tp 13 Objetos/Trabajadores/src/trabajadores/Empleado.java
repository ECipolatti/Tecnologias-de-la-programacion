package trabajadores;

public abstract class Empleado {

  private String nombre;
  private String dni;

  public Empleado(String _nombre, String _dni){
	  nombre = _nombre;
	  dni = _dni;
  }
  
  public abstract Float CalcSueldo();

}