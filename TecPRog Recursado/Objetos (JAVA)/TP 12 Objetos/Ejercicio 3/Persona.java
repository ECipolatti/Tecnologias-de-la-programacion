package facultad;
import java.util.Vector;
import java.util.Date;

public class Persona {

  private String nombre;
  private String documento;
  private Date fecha_nacimiento;
  public Vector<Alumno>  Inscripta;

  public Persona(String nom, String dni, Date _fecha){
	  this.nombre = nom;
	  this.documento = dni;
	  this.fecha_nacimiento = new Date(_fecha.getYear(),_fecha.getMonth(),_fecha.getDate());
	  Inscripta = new Vector<Alumno>();
  }
  
  public void addInscripto(Alumno p){
	  this.Inscripta.add(p);
  }
  public Integer calcularEdad() {
	  Date ahora = new Date();
		int edad;
		
		edad = (ahora.getYear() - this.fecha_nacimiento.getYear());
		if(ahora.getMonth()<this.fecha_nacimiento.getMonth()){
			edad = edad -1;
		}
		else {
			if(ahora.getMonth()==this.fecha_nacimiento.getMonth()){
				if(ahora.getDate()<this.fecha_nacimiento.getDate()){
					edad = edad -1;
				}
			}
		}
		return edad;
  }

  public String toString() {
	  return this.nombre;
  }

}