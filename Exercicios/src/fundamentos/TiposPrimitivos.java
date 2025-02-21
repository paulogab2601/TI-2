package fundamentos;

public class TiposPrimitivos {

	public static void main(String[] args) {
		// Info de funcionarios

		byte anoEmpresa = 23;
		short numeroVoo = 542;
		int id = 123390;
		long pontoAcumulado = 123003213123L; // Para usar o Long em numeros literais, coloque uma letra L ao final do
												// numero,

		// Numericos reais

		float salario = 11.243F; // Literal float, precisa de um F ao final do numero para informar corretamente
		double vendasAc = 2993311.01;
		
		//Tipo booleano
		
		boolean estaDeFerias = false;
		
		System.out.println(anoEmpresa*365 - (30*anoEmpresa));
		System.out.println(numeroVoo/2);
		System.out.println(pontoAcumulado/vendasAc);
		System.out.println(id + " ganha -> " + salario);
		System.out.println("Está de ferias? -> " + estaDeFerias);
		
	}

}
