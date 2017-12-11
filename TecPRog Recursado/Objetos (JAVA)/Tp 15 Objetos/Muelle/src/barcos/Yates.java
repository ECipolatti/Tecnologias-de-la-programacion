package barcos;

public class Yates extends Barco {

  private Integer cantidad_camarotes;

  private Integer potencia;

  
  public Yates(Integer matricula, Integer eslora, Integer anio_fabricacion,
		Integer cantidad_camarotes, Integer potencia) {
	super(matricula, eslora, anio_fabricacion);
	this.cantidad_camarotes = cantidad_camarotes;
	this.potencia = potencia;
}


public void modulo(Integer dias, Integer valor){
	Integer precio=0;
	Integer Modulo_comun= get_eslora()*10*valor;
	precio = Modulo_comun + potencia + cantidad_camarotes;
	System.out.println(""+precio);
  }

}