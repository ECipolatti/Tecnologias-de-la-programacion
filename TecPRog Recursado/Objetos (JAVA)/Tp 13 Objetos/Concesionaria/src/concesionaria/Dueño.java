package concesionaria;

public class Dueño extends Persona {

  private String telefono;

  public Dueño(String apellido, String nombre, String dni, String telefono) {
	super(apellido, nombre, dni);
	this.telefono = telefono;
  }

  
}