package facultad;
import java.util.Date;

public class persona {
	private String nombre;
	private String apellido;
	private int dni;
	private Date fecha_Nac;
	
	public persona(String nom, String ape, int d, Date _fecha){
		this.nombre = nom;
		this.apellido = ape;
		this.dni = d;
		this.fecha_Nac = _fecha;
	}
	
	
	public String get_Nombre(){return this.nombre;}
	public String get_Apellido(){return this.apellido;}
	public int get_DNI(){return this.dni;}
	
	private int calcular_Edad(){
		Date ahora = new Date();
		int edad;
		
		edad = (ahora.getYear() - this.fecha_Nac.getYear());
		if(ahora.getMonth()<this.fecha_Nac.getMonth()){
			edad = edad -1;
		}
		else {
			if(ahora.getMonth()==this.fecha_Nac.getMonth()){
				if(ahora.getDay()<this.fecha_Nac.getDay()){
					edad = edad -1;
				}
			}
		}
		return edad;
	}
	
	public String mostrar(){
		return this.get_Nombre()+ ", "+ this.get_Apellido() + ": "+ this.calcular_Edad()+ " años.";
	}
	
}
