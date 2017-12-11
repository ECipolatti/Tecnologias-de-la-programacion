package facultad;

public class principal {

	/**
	 * @param args
	 */
	public static void main(String[] arg) {
		persona oPer1 = new persona("Juan Perez", 12345678);
		persona oPer2 = new persona("Juan Perez", 12345678);
		
		if (oPer1.equals(oPer2)) {
		System.out.println("Son iguales");
		} else {
		System.out.println("Son distintos");
		}
		
	}

}
