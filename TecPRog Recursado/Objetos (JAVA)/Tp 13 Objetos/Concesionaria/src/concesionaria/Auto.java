package concesionaria;

public class Auto extends Vehiculo implements Publicable {

	
	public Auto(String marca, Integer anio, String modelo, Float precio,
			Integer kilometros, Dueño myDueño) {
		super(marca, anio, modelo, precio, kilometros, myDueño);
	}
	public String getmarca(){return null;}
	
	public void publicar() {
		System.out.println(mostrar());
	}
	public String mostrar(){
		return "marca: "+this.getmarca()+" Modelo: "+this.getmodelo()
				+" Kilometros: "+this.getkilometros();
	}
}