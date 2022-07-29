Operacao = input("Escolha a operação:\n1 soma,\n2 subtracao,\n3 multiplicacao,\n4 divisao\n")
numero1 = input("Diga o n1\n")
numero2 = input("Diga o n2\n")
if Operacao==1:
    resultado = numero1 + numero2
    print(resultado)
elif Operacao==2:
    resultado = numero1 - numero2
    print(resultado)
elif Operacao==3:
    resultado = numero1 * numero2
    print(resultado)
elif Operacao==4:
    resultado = numero1 / numero2
    print(resultado)
else: 
    print("Operacao invalida")