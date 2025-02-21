package fundamentos;

public class AreaCircunferencia {

	public static void main(String[] args) {
		double raio = 3;
		final double PI = 3.1415; // final torna a var constante, e nao modificavel ao longo do programa
		
		double area = PI*raio*raio;
		
		System.out.println("Área = " + area);
		
	}
	
}
