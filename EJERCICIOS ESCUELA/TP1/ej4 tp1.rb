def ingresar_numero()
    print"Ingrese un valor: "
    numero=gets.chomp.to_i
    puts "El valor ingresado es: #{numero}"
    return numero
end

def potencia(numx,numy)
	prod=1
	cont=0
	while (cont < numy)
		prod=prod * numx
		cont=cont+1
	end
	puts "La potencia del primer numero ingresado elevado al segundo numero ingresado da como resultado: #{prod}"
end

#main
system('clear')
puts"Diseñe un algoritmo modular (PROGRAMA) que calcule la potencia de un número X elevado al exponente Y,
mediante productos sucesivos. Considere que la potencia mediante productos sucesivos se implementa con
estructuras MIENTRAS (while). Indique cómo se pasan los parámetros al subprograma.\n\n"
numx=ingresar_numero
numy=ingresar_numero
potencia(numx,numy)

print"\nFín del programa."
anticierre=gets.chomp