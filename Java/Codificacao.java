import java.util.Scanner;

/**
* Algoritmo de criptografia
* @author Cristian Henrique (cristianmsbr@gmail.com)
*/
public class Codificacao {
	public static void main (String[] args) {
		System.out.print("Digite sua mensagem > ");
		Scanner input = new Scanner(System.in);
		String msg = input.nextLine();
		char[] caracteres = msg.toCharArray();

		System.out.print("Digite o valor da cifra > ");
		int cifra = input.nextInt();

		for (int i = 0; i < caracteres.length; i++) {
			int ascii = (int) caracteres[i] + cifra;
			System.out.print((char) ascii);
		}

		System.out.println();
	}
}