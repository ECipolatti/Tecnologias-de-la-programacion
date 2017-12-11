package barcos;
public class Deportivo extends Barco {

  private Integer potencia;
  
  

  public Deportivo(Integer matricula, Integer eslora, Integer anio_fabricacion,
		Integer potencia) {
	super(matricula, eslora, anio_fabricacion);
	this.potencia = potencia;
}



  public void modulo(Integer dias, Integer valor){
		Integer precio=0;
		Integer Modulo_comun= get_eslora()*10*valor;
		precio = Modulo_comun + potencia;
		System.out.println(""+precio);
	  }

}