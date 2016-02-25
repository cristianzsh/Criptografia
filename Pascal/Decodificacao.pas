program Decodificacao;
uses crt;

var
   mensagem : string;
   n, i, tamanho : integer;
   arquivoTexto : text;

begin
    writeln ('Algoritmo de descriptografia');
    writeln ('');

    assign (arquivoTexto, 'C:\Temp\mensagem_codificada.txt');
    reset (arquivoTexto);
    readln (arquivoTexto, mensagem);
    close(arquivoTexto);

    writeln ('Mensagem codificada: ', mensagem);
    write ('Digite a chave para prosseguir: ');
    readln (n);

    tamanho := length (mensagem);
    for i := 1 to tamanho do
        mensagem[i] := chr(ord(mensagem[i]) - n);

    writeln ('Mensagem decodificada: ', mensagem);

    repeat until keypressed;
end.
