package facultad;
import java.util.Date;

public class principal {

	/**
	 * @param args
	 */
	public static void main(String[] arg) {
		Date f1= new Date(90,8,10);
		Date f2= new Date(75,5,7);
		
		persona oPer1 = new persona("Juan", "Perez", 12345678, f1);
		persona oPer2 = new persona("Juan", "Gonsalez",12345678,f2);
		
		if (oPer1.equals(oPer2)) {
		System.out.println("Son iguales");
		} else {
		System.out.println("Son distintos");
		}
		System.out.println(oPer1.mostrar());
		System.out.println(oPer2.mostrar());
		
		
	}

}
