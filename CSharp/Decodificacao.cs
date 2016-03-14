using System;

/*
 * Algoritmo de Criptografia (Cifra de César): decodificação
 *
 * Autor: Felipe Pontes
 * Email: felipemfpontes@gmail.com
 */

namespace Criptografia
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite sua mensagem > ");
            string mensagem = Console.ReadLine();

            Console.Write("Digite o valor da cifra > ");
            int cifra = int.Parse(Console.ReadLine());

            foreach (char c in mensagem)
                Console.Write((char)((int)c - cifra));

            Console.ReadKey();
        }
    }
}
