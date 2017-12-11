package p1;

import java.util.Observable;

public class Boton extends Observable {

  private Boolean presionado;
  private Integer numero;

  public Boton(Integer numero) {
	
	this.presionado = false;
	this.numero = numero;
}
  public void presionoBoton(){
	  this.presionado=true;
	  this.setChanged();
	  this.notifyObservers(this);
  }
  public void liberarBoton(){
	  this.presionado=false;
  }
  
  public String toString() {
      if(this.presionado) {
   	   return "(+)";
      }
      else {
   	   return "(-)";
      }
  }
 
  public int verNumero() {
      return this.numero;
  }
  
}