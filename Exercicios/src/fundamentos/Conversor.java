package fundamentos;

public class Conversor {
 
	public static void main(String[] args) {
		
		double temp = 86; 
		double celsius;
		final double constant0 = 5/9.0;
		final double constant1 = 32;
		
		celsius = (temp - constant1)*constant0;
		
		System.out.println("Temperatura em Celsius: " + celsius);
		
	}
}
