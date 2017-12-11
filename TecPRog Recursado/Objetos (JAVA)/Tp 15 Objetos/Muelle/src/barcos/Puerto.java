package barcos;
import java.util.Vector;

public class Puerto {

  public Vector<Amarra>  myAmarra;
  
  public Puerto(){
	  myAmarra=new Vector<Amarra>();
  }

  public void add_amarra(Amarra _amarra){myAmarra.add(_amarra);}
  
  public void calcular_alquileres( Integer mes, Integer anio) {
	  for(Amarra oAmarra: myAmarra){
		  oAmarra.liquidar(mes,anio);
	  }
  }

}