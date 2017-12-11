package facturas;

import java.util.Vector;

public class Cliente {

  private String nombre;
  private String cuit;
  public Vector<Factura>  cFactura;
  
  public Cliente(String _nombre, String _cuit){
	  nombre = _nombre;
	  cuit = _cuit;
	  cFactura = new Vector<Factura>();
  }
  public void addFactura(Factura f){
	  cFactura.add(f);
  }
  public String mostrar(){
	  return nombre + " cuit " + cuit;
  }

}