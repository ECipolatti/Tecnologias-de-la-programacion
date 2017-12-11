package trabajadores;
import java.util.Vector;

public class Jornal extends Empleado {
	
	private Float sueldoA;
  	private Float sueldoB;
    private Jefe myJefe;
    private Vector<HsPer>  HsPer;


  public Jornal(String _nombre, String _dni, Float _sueldoA,Float _sueldoB , Jefe _jefe) {
		super(_nombre, _dni);
		myJefe = _jefe;
		sueldoB = _sueldoA;
		sueldoB = _sueldoB;
		HsPer = new Vector<HsPer>();
	}
  public void cargarHsPer(HsPer _per) {
	  HsPer.add(_per);
  }

  public Float CalcSueldo() {
	Float sueldo=(float) 0;
	  for(HsPer LP: HsPer){
		if(LP.hstrabajadas()<40){
			sueldo = LP.hstrabajadas()*sueldoA;
		}
		else{
			sueldo = (LP.hstrabajadas()%40)*sueldoB;
			sueldo += 40*sueldoA;
		}
	}
	  return sueldo;
}
  

}