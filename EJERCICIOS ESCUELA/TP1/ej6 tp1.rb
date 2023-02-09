def ingresar_numero()
    print "Ingresar un numero al azar: "
    numero=gets.chomp.to_i
    puts "El numero ingresado es: #{numero}"
    return numero
end

def ingresar_caracter()
    print "Ingresar un caracter al azar: "
    caracter=gets.chomp
    puts "El caracter ingresado es: #{caracter}"
    return caracter
end

def dibujar(num,car)
    cont=0
    begin
        cont.times do
            print "#{car}"
        end
        puts "#{car}"
        cont=cont+1
    end until(cont==num)
end


#main
system('clear')
puts"Diseñe un algoritmo modular (PROGRAMA) al cual se le ingrese por teclado un caracter y un número, a partir de
ese caracter y ese número cree una triangulo de caracteres.
Por ejemplo si le pasamos el asterisco * y el número 3 muestre lo siguiente como resultado:
*
**
***
****
*****\n\n"
num=ingresar_numero
car=ingresar_caracter
dibujar(num,car)

print"\nFín del programa."
anticierre=gets.chomp