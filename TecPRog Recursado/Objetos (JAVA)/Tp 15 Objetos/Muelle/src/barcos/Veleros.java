package barcos;
public class Veleros extends Barco {

  private Integer numero_velas;

  
  public Veleros(Integer matricula, Integer eslora, Integer anio_fabricacion,
		Integer numero_velas) {
	super(matricula, eslora, anio_fabricacion);
	this.numero_velas = numero_velas;
}


  public void modulo(Integer dias, Integer valor){
		Integer precio=0;
		Integer Modulo_comun= get_eslora()*10*valor;
		precio = Modulo_comun + numero_velas;
		System.out.println(""+precio);
	  }

}