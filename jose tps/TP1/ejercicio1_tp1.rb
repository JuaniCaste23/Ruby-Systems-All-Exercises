#Realizar un diagrama que permita ingresar dos números enteros e imprima un texto que indique si la resta del primero menos el segundo es positiva, negativa o cero.

def ingresar_numeros
    print"Ingrese un primer Numero: "
    numero1=gets.chomp.to_i
    print"Ingrese un segundo Numero: "
    numero2=gets.chomp.to_i
    return numero1,numero2
end

def calcular(num1,num2)
    resta= num1 - num2 ; mensaje=""
    puts"\nSe restaran los valores ingresados --> #{num1} - #{num2}\n\n"
    case
    when (resta > 0)
        mensaje="La resta entre ambos valores es positiva --> #{resta}"
    when (resta < 0)
        mensaje="La resta entre ambos valores es negativa --> #{resta}"
    when (resta == 0)
        mensaje="La resta entre ambos valores da 0"
    end
    return mensaje
end

#main
system('cls')
n1,n2=ingresar_numeros
imprimir=calcular(n1,n2)
puts"#{imprimir}"

anticierre=gets.chomp