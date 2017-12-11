package facultad;
import java.util.Vector;

public class Carrera {

  private String nombre;
  private Facultad facu;
  private Vector<Alumno>  alumnos;
  
  public Carrera(Facultad fac, String nom){  
	  super();
	  this.facu = fac;
	  this.nombre = nom;
	  alumnos = new Vector<Alumno>();}
  
  public void addAlumno(Alumno a){
	  this.alumnos.add(a);
  }
  
  public String toString() {
	  return "Carrera: " +this.nombre;}

  public void mostrarAlumnos() {
	  System.out.println(this.toString());
	  System.out.print("Alumnos: ");
	  
	  for(Alumno listaalumno:alumnos){
		  System.out.println(listaalumno.toString());
	  }
  }

}