package facturas;

public class Producto {

  private String nombre;
  private String cuit;

  public Producto(String _nombre, String _cuit){
	  nombre = _nombre;
	  cuit = _cuit;
  }
  public String mostrar_producto(){
	  return nombre;
  }
    
}