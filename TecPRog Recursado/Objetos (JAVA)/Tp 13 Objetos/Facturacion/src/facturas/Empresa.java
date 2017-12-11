package facturas;

import java.util.Vector;


public class Empresa {

  private String nombre;
  private Vector<Cliente>  cCliente;
  private Vector<Producto>  cProducto;
  private Vector<Factura>  cFactura;

  
  public Empresa(String _nombre){
	  nombre =_nombre;
	  cCliente = new Vector<Cliente>();
	  cProducto = new Vector<Producto>();
	  cFactura = new Vector<Factura>();
  }
  public void add_Cliente(Cliente c){cCliente.add(c);}
  public void add_Factura(Factura f){cFactura.add(f);}
  public void add_Producto(Producto p){cProducto.add(p);}
  public void mostrar_facturas(){
	  System.out.println("Nombre de la Empresa: "+ nombre);
	  for(Factura lfactura: cFactura){
		  lfactura.mostrar_factura();
	  }
  }

}