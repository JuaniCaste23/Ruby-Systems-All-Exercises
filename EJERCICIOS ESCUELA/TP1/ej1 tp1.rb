def ingresar_numero()
    print "Ingrese un numero al azar: "
    numero= gets.chomp.to_i
    puts "El numero ingresado por el usuario es: #{numero}"
    return numero
end

def sumar(num1,num2)
    valor=0
    valor=valor+num1+num2
    puts "La suma de ambos numeros da como resultado: #{valor}"
end

#main
system('clear')
puts"Diseñe un algoritmo modular (PROGRAMA) que calcule la suma de 2 números ingresados por el usuario.
Considere que los valores se introducen en el programa principal. Indique cómo se pasan los parámetros al
subprograma.\n\n"
num1=ingresar_numero
num2=ingresar_numero
sumar(num1,num2)

print"\nFín del programa."
anticierre=gets.chomp