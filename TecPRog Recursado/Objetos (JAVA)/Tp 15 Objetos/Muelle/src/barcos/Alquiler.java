package barcos;

import java.util.Date;

public class Alquiler {

  private Date fecha_inicial;
  private Date fecha_final;
  private String nombre;
  private Integer dni;
  private Cliente myCliente;
  private Amarra myAmarra;
  private Barco myBarco;
  
  
  public Alquiler(Date fecha_inicial, Date fecha_final, String nombre,
		Integer dni, Cliente myCliente, Amarra myAmarra, Barco myBarco) {
	super();
	this.fecha_inicial = fecha_inicial;
	this.fecha_final = fecha_final;
	this.nombre = nombre;
	this.dni = dni;
	this.myCliente = myCliente;
	this.myAmarra = myAmarra;
	this.myBarco = myBarco;
}


public void ocuapcion(Integer mes, Integer anio) {
	if((this.fecha_final.getMonth()==mes) && (this.fecha_inicial.getYear()==anio)){
		Integer dias =this.fecha_final.getDate() - this.fecha_final.getDate();
		myBarco.modulo(dias, 2);
	}
	
  }

}