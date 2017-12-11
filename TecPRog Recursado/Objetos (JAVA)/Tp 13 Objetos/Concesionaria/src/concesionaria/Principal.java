package concesionaria;

public class Principal {

	
	public static void main(String[] args) {
		Dueño dueño1 = new Dueño("cipolatti", "edgardo","35215385","423423423432");
		Deportivo v1= new Deportivo("Ford", 2000, "Focus", (float) 150,80000, dueño1,"Argentina");
		v1.publicar();
	}
	/*NO ENTIENDO COMO USAR LA INTERFAZ
	 no puedo usar un vector dentro de publicable porque es abstracta
	 lo que se me ocurre es que el publicar devuelva un String y no sea void
	 para así en el for de publicaciones poder mostrar las publicaciones
	 */

}
