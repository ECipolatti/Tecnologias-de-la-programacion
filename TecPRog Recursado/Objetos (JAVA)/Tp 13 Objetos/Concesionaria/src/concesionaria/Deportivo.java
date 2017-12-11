package concesionaria;

public class Deportivo extends Auto {

  private String paisOrigen;

  public Deportivo(String marca, Integer anio, String modelo, Float precio,
		Integer kilometros, Dueño myDueño, String _pais) {
	super(marca, anio, modelo, precio, kilometros, myDueño);
	this.paisOrigen = _pais;
  }
	public String mostrar(){
		return this.mostrar();
	}
  

}