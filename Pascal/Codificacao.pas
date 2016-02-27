program Codificacao;
uses crt;

// Desenvolvido por Cristian Henrique (cristianmsbr@gmail.com)

var
   mensagem : string;
   n, i, tamanho : integer;
   arquivoTexto : text;

begin
     writeln ('Algoritmo de criptografia');
     writeln ('Digite a mensagem(max = 100 caracteres):');
     readln (mensagem);

     write ('Digite uma chave > ');
     readln (n);

     assign (arquivoTexto, 'C:\Temp\mensagem.txt');
     append (arquivoTexto);
     writeln (arquivoTexto, mensagem);
     close (arquivoTexto);

     tamanho := length (mensagem);
     for i := 1 to tamanho do
         mensagem[i] := chr(ord(mensagem[i]) + n);


     write ('Mensagem codificada: ');
     writeln (mensagem);

     assign (arquivoTexto, 'C:\Temp\mensagem_codificada.txt');
     append (arquivoTexto);
     writeln (arquivoTexto, mensagem);
     close (arquivoTexto);

     repeat until keypressed;
end.
