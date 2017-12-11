package barcos;

import java.util.Date;

public class Principal {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Puerto puerto=new Puerto();
		Amarra am1=new Amarra(1);
		Yates y1=new Yates(12345,40,1990,5,300);
		Veleros v1=new Veleros(45674576, 20, 2000, 2);
		Deportivo d1=new Deportivo(9999, 34, 2005, 400);
		Cliente _c=new Cliente("Juan");
		Date fei=new Date(90,4,10);
		Date fef=new Date(90,4,15);
		Alquiler alq1 =new Alquiler(fei, fef, "Juan", 352142343, _c, am1, d1);
		Alquiler alq2 =new Alquiler(fei, fef, "Juan", 352142343, _c, am1, y1);
		Alquiler alq3 =new Alquiler(fei, fef, "Juan", 352142343, _c, am1, v1);
		puerto.add_amarra(am1);
		am1.add_alquier(alq1);
		am1.add_alquier(alq2);
		am1.add_alquier(alq3);
		y1.add_alquier(alq2);
		v1.add_alquier(alq3);
		d1.add_alquier(alq1);
		puerto.calcular_alquileres(4, 90);
		
	}

}
