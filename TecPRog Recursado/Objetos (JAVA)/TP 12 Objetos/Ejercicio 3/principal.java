package facultad;
import java.util.Date;


public class principal {

	public static void main(String[] args) {
		Date fn1 = new Date(1990,11,11);
		Date fn2 = new Date(1990,12,12);
		Date fi1 = new Date(2008,11,10);
		Date fi2 = new Date(2008,12,11);
		Persona per1 = new Persona("Alumno 1", "11.111.111", fn1);
		Persona per2 = new Persona("Alumno 2", "22.222.222", fn2);
		Facultad Facu1 = new Facultad("FICH");
		Facultad Facu2 = new Facultad("FADU");
		Carrera car1 = new Carrera(Facu1, "Ingeniería en Informática");
		Carrera car2 = new Carrera(Facu1, "Ingeniería en Reursos Hídricos");
		Alumno alu = new Alumno(per1, car1, fi1);
		Alumno alu2 = new Alumno(per2, car1, fi2);
		
		
		Facu1.addCarrera(car1);
		Facu1.addCarrera(car2);
		car1.addAlumno(alu);
		
		car1.addAlumno(alu2);
		per1.addInscripto(alu);
		per1.addInscripto(alu2);
		
		Facu1.mostrarCarrerasyAlumnos();
		
		
		

	}

}
