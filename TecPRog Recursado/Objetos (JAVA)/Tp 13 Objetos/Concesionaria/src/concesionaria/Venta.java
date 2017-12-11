package concesionaria;

import java.util.Date;

public class Venta {

  private Integer monto;
  private Date fecha;
  private Cliente myCliente;
  private Vehiculo myVehiculo;
  
  
  public Venta(Integer monto, Date fecha, Cliente myCliente, Vehiculo myVehiculo) {
	  super();
	  this.monto = monto;
	  this.fecha = fecha;
	  this.myCliente = myCliente;
	  this.myVehiculo = myVehiculo;
  }


}