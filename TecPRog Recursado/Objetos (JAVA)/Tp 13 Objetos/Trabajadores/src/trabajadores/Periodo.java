package trabajadores;

import java.util.Vector;

public class Periodo {

  private Short Mes;
  private Short Anio;
  public Vector<HsPer>  HsPer;
  
  public Periodo(Short _mes, Short _anio){
	  Mes = _mes;
	  Anio = _anio;
	  HsPer = new Vector<HsPer>();
  }
  public Float sueldo(){
	  return null;
  }
  /*public void add_horasper(HsPer _horas_periodo){
	  HsPer.add(_horas_periodo);
  }
  */
}