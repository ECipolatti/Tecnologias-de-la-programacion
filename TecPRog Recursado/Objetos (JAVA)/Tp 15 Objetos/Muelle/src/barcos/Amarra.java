package barcos;
import java.util.Vector;

public class Amarra {

  private Integer numero;
  private Vector<Alquiler>  vAlquiler;
  
  
  
  public Amarra(Integer numero) {
	super();
	this.numero = numero;
	vAlquiler=new Vector<Alquiler>();
}
  

public void add_alquier(Alquiler _alquiler){vAlquiler.add(_alquiler);}

public void liquidar( Integer mes, Integer anio) {
	for(Alquiler oAlquiler: vAlquiler){
		oAlquiler.ocuapcion(mes, anio);
	}
  }

}