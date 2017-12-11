package facturas;

public class Item {

  private Integer cantidad;
  private Float precio_unitario;
  private Producto cProducto;
  
  public Item(Integer _cantidad, Float precio, Producto _producto){
	  cantidad = _cantidad;
	  precio_unitario = precio;
	  cProducto = _producto;
  }
  public Float calcularsub(){
	  return precio_unitario*cantidad;
  }
  public String mostrar_item(){
	  return cProducto.mostrar_producto() + " "+cantidad+"unid."+ calcularsub();
  }
  
}