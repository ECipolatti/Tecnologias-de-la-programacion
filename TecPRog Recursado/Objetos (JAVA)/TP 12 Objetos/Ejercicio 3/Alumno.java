package facultad;
import java.util.Date;


public class Alumno {
	private Date fecha_inscripcion;
	private Persona persona;
	private Carrera car;
	private int mes;
	
	public Alumno(Persona pers, Carrera carre, Date _fecha){
		super();
		this.car = carre;
		this.persona = pers;
		this.fecha_inscripcion = new Date(_fecha.getYear(),_fecha.getMonth(),_fecha.getDate());
	}
	
	public String toString(){
		return this.persona.toString()+ " - "+
				this.fecha_inscripcion.getDate()+"/"+
				this.fecha_inscripcion.getMonth()+"/"+
				this.fecha_inscripcion.getYear();
	}
}
