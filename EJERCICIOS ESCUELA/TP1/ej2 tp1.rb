def ingresar_numero()
    print"Ingrese un número al azar: "
    numero=gets.chomp.to_i
    puts "El numero ingresado es: #{numero}"
    return numero
end

def sumasucesiva(num1,num2)
    suma=0
    cont=0
    begin
        suma=suma+num1
        cont=cont+1
    end until(cont==num2)
    puts "El producto de ambos números da como resultado: #{suma}"

end

#main
system('clear')
puts"Diseñe un algoritmo modular (PROGRAMA) que calcule el producto (mediante sumas sucesivas) de 2 números
ingresados por el usuario. Considere que los valores a multiplicar se introducen en el programa principal.\n\n"
num1=ingresar_numero
num2=ingresar_numero
sumasucesiva(num1,num2)

print"\nFín del programa."
anticierre=gets.chomp 

