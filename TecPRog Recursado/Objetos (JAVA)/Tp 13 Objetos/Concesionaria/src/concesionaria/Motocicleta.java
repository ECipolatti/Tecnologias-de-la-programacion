package concesionaria;

public class Motocicleta extends Vehiculo implements Publicable {

	
	public Motocicleta(String marca, Integer anio, String modelo, Float precio,
			Integer kilometros, Dueño myDueño) {
		super(marca, anio, modelo, precio, kilometros, myDueño);

	}

	public void publicar() {
		// TODO Auto-generated method stub
		
	}
	public String mostrar(){
		return "marca: "+this.getmarca()+" Modelo: "+this.getmodelo()
				+" Kilometros: "+this.getkilometros();
	}
}