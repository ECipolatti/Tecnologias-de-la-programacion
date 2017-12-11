package concesionaria;

import java.util.Vector;

public class Publicacion{
  
  public void publicarDiario( Vector<Publicable> publicable) {
	  for(Publicable lista_publicable: publicable){
		  lista_publicable.publicar();
	  }
  }

}