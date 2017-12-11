package trabajadores;

public class Jefe extends Empleado {

	private float SFijo;
	
	public Jefe(String _nombre, String _dni, Float _sueldo) {
		super(_nombre, _dni);
		SFijo = _sueldo;
	}
	public Float CalcSueldo(){
		return SFijo;
	}
	public String mostrar_Sueldo(){
		return ""+SFijo;
	}



    
}