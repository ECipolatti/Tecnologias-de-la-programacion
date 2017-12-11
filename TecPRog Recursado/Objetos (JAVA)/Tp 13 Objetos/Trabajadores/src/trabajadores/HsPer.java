package trabajadores;

public class HsPer {

	private Float hsTrabajo;
	private Jornal myJornal;
	private Periodo myPeriodo;
	
	public HsPer(Float _hstrabajo, Jornal _jornal, Periodo _periodo){
		hsTrabajo = _hstrabajo;
		myJornal = _jornal;
		myPeriodo = _periodo;
	}
	public Float hstrabajadas(){
		return hsTrabajo;
	}
	public String mostrar_horas(){
		return ""+hsTrabajo;
	}
}