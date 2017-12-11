package trabajadores;

public class Mensual extends Empleado{

	private Float SFijo;
    private Jefe myJefe;
    public Mensual(String _nombre, String _dni, Float _sueldo, Jefe _jefe){
    	super(_nombre,_dni);
    	SFijo = _sueldo;
    	myJefe = _jefe;
    }
    
	public Float CalcSueldo() {
		return SFijo;
	}
	public String mostrar_sueldo(){
		return ""+SFijo;
	}
}