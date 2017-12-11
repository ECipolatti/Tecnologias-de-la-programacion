package concesionaria;

public class Camioneta extends Vehiculo implements Publicable {

	
	public Camioneta(String marca, Integer anio, String modelo, Float precio,
			Integer kilometros, Dueño myDueño) {
		super(marca, anio, modelo, precio, kilometros, myDueño);
	
	}

	public void publicar() {
		System.out.println(mostrar());
	}
	
	public String mostrar(){
		return "marca: "+this.getmarca()+" Modelo: "+this.getmodelo()
				+" Kilometros: "+this.getkilometros();
	}
}