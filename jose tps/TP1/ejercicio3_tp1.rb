#Realizar un diagrama que permita ingresar cinco números, en cinco registros (lecturas) diferentes e imprimir aquellos valores mayores al primero.

def ingresar_numeros
    numeros=Array.new
    for i in 0..4
        print"Ingrese un número: "
        num=gets.chomp.to_i
        numeros.push(num)
        #numeros[i]=num Misma manera.
    end
    return numeros
end

def lectura(numeros)
    puts"\nLos numeros ingresados son:"
    for i in 0..numeros.length-1
        puts"--> #{numeros[i]}"
    end
end

def calcular(numeros)
    puts"\nLos numeros que sean más grandes que el primero (#{numeros[0]}) se imprimiran:"
    for i in 0..numeros.length-1
        if(numeros[i] > numeros[0])
            puts"--> #{numeros[i]}"
        end
    end
end

#main
system('cls')
num=ingresar_numeros
lectura(num)
calcular(num)

anticierre=gets.chomp