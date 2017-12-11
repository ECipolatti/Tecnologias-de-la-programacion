package facturas;

public class Principal {

	
	public static void main(String[] args) {
		Empresa empre= new Empresa("Mayoriasta S.A");
		Cliente c1 = new Cliente("Edgardo", "111111111");
		Cliente c2 = new Cliente("Jose", "88888888");
		Factura f1 = new Factura("10/08/90", "22222222", c1);
		Factura f2 = new Factura("02/05/90", "333333333", c1);
		Factura f3 = new Factura("22/10/90", "444444444", c2);
		Producto p1=new Producto("jabon", "1");
		Producto p2=new Producto("Escoba", "6");
		Producto p3=new Producto("Detergente", "5");
		Item i1= new Item(2,(float) 5, p1);
		Item i2= new Item(10,(float) 7, p2);
		Item i3= new Item(20,(float) 6, p3);
		f1.add_item(i1);
		f1.add_item(i2);
		f2.add_item(i3);
		f3.add_item(i1);
		f3.add_item(i3);
		c1.addFactura(f1);
		c1.addFactura(f3);
		c2.addFactura(f2);
		empre.add_Cliente(c1);
		empre.add_Cliente(c2);
		empre.add_Factura(f3);
		empre.add_Factura(f2);
		empre.add_Factura(f1);
		empre.add_Producto(p3);
		empre.add_Producto(p2);
		empre.add_Producto(p1);
		empre.mostrar_facturas();
		
		

	}

}
