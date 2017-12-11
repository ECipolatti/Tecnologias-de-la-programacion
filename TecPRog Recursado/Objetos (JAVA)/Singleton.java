 
public class Singleton {
    private static Singleton INSTANCE = null;
 
    // Private constructor suppresses 
    private Singleton(){}
 
    // creador sincronizado para protegerse de posibles problemas  multi-hilo
    // otra prueba para evitar instanciaci�n m�ltiple 
    private synchronized static void createInstance() {
        if (INSTANCE == null) { 
            INSTANCE = new Singleton();
        }
    }
 
    public static Singleton getInstance() {
        createInstance();
        return INSTANCE;
    }
}