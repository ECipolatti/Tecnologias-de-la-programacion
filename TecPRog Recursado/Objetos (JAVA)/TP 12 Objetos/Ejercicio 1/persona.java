package facultad;

public class persona {
	private String nombre;
	private int dni;
	
	public persona(String nom, int d){
		this.nombre = nom;
		this.dni = d;
	}
	
	public String get_Nombre(){return this.nombre;}
	public int get_DNI(){return this.dni;}
	
	
	public String descripcion(){
		return this.get_Nombre()+ " "+ this.get_DNI();
	}
	
}
