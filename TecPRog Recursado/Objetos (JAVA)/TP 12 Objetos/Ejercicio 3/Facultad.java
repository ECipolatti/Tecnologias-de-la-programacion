package facultad;
import java.util.Vector;

public class Facultad {

  private String nombre;
  private Vector<Carrera>  carreras;
  
  
  public Facultad(String nom){
	  this.nombre = nom;
	  carreras = new Vector<Carrera>();}
  
  public String toString() {
  	return this.nombre;
  }
  public void addCarrera(Carrera c){
	  this.carreras.add(c);
  }

  public void mostrarCarrerasyAlumnos() {
	  System.out.println("Facultad: " + this.toString());
	  for(Carrera lcarrera:carreras){
		  lcarrera.mostrarAlumnos();
	  }
  }

}