mensagem = input('Digite a mensagem > ')
cifra = int(input('Digite o valor da cifra > '))

for i in range(len(mensagem)):
    print (chr(ord(mensagem[i]) - cifra), end='')
print ('')