/*
 * Algoritmo de Criptografia (Cifra de César): decodificação
 *
 * Autor: Felipe Pontes
 * Email: felipemfpontes@gmail.com
 */

var mensagem = '', mensagemCodificada, cifra;

mensagemCodificada = prompt('Digite sua mensagem');
cifra = parseInt(prompt('Digite o valor da cifra'));

for (var i = 0, length = mensagemCodificada.length; i < length; i++) {
  mensagem += String.fromCharCode(mensagemCodificada.charCodeAt(i) - cifra);
}

alert(mensagem);
