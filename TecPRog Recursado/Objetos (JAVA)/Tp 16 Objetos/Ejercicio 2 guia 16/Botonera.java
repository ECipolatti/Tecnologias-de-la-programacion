package p1;
import java.util.Observable;
import java.util.Observer;
import java.util.Vector;

public class Botonera implements Observer{

  public Vector<Boton>  myBoton;

  public Botonera(Integer numBotones){
	  myBoton=new Vector<Boton>();
	  for(int i=0; i<numBotones; i++) {
	   	   Boton btn = new Boton(i+1);
	   	   btn.addObserver(this);
	   	   myBoton.addElement(btn);
	      }
}
  
  public void pulsar(int boton) {
      for(Boton oBoton: myBoton) {
   	   if(oBoton.verNumero() == boton) {
   		   oBoton.presionoBoton();
   	   }
      }
  }

  public String toString() {
      String r = new String();
      for(Boton oBoton: myBoton) {
   	   r += oBoton.toString() + " ";
      }
      return r;
  }

@Override
public void update(Observable arg0, Object arg1) {
	Boton b=(Boton) arg0;
	for(Boton oBoton: myBoton){
		if(oBoton.verNumero()!=b.verNumero()){
			oBoton.liberarBoton();
		}
		
	}
	// TODO Auto-generated method stub
}
}