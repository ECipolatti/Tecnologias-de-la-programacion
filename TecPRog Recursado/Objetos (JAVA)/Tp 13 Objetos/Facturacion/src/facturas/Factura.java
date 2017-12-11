package facturas;

import java.util.Vector;

public class Factura {

  private String fecha;
  private String numero;
  private Vector<Item>  cItem;
  private Cliente cCliente;

  public Factura(String _fecha, String _numero, Cliente _cliente){
	  fecha = _fecha;
	  numero = _numero;
	  cCliente = _cliente;
	  cItem = new Vector<Item>();
  }
  
  public void add_item(Item i){
	  cItem.add(i);
  }
  
  public void mostrar_factura(){
	  System.out.println("Factura nro: "+ numero);
	  System.out.println(this.cCliente.mostrar());
	  System.out.println(fecha);
	  Float TOTAL =(float) 0;
	  for(Item li:cItem){
		  TOTAL+=li.calcularsub();
	  }
	  System.out.println("Total: $"+TOTAL);
	  for(Item li:cItem){
		  System.out.println(li.mostrar_item());
	  }
	  
  }
  
}