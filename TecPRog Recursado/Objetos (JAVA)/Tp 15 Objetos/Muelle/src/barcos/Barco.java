package barcos;
import java.util.Vector;

public class Barco {

  private Integer matricula;
  private Integer eslora;
  private Integer anio_fabricacion;
  private Vector<Alquiler>  vAlquiler;
  
  

  public Barco(Integer matricula, Integer eslora, Integer anio_fabricacion) {
	super();
	this.matricula = matricula;
	this.eslora = eslora;
	this.anio_fabricacion = anio_fabricacion;
	this.vAlquiler=new Vector<Alquiler>();
}

  public Integer get_eslora(){
	  return this.eslora;
  }
  
  public void add_alquier(Alquiler _alquiler){vAlquiler.add(_alquiler);}


public void modulo(Integer dias,Integer  valor){};

}