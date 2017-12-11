package concesionaria;

import java.util.Vector;

/**
 * @author edgardo
 *
 */
public class Vehiculo {

  private String marca;
  private Integer anio;
  private String modelo;
  private Float precio;
  private Integer kilometros;
  private Vector<Venta>  Venta;
  private Dueño myDueño;

  /**
 * @param marca
 * @param anio
 * @param modelo
 * @param precio
 * @param kilometros
 * @param myDueño
 */
public Vehiculo(String marca, Integer anio, String modelo, Float precio,
		Integer kilometros, Dueño myDueño) {
	super();
	this.marca = marca;
	this.anio = anio;
	this.modelo = modelo;
	this.precio = precio;
	this.kilometros = kilometros;
	Venta = new Vector<Venta>();
	this.myDueño = myDueño;
}
  public void add_venta(Venta v){Venta.add(v);}
  
  public String getmarca(){ return marca;}
  public String getmodelo(){return modelo;}
  public Integer getkilometros(){return kilometros;}
  
  
	  
  
}