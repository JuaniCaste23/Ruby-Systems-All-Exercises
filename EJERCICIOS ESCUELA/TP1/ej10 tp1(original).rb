def ingresarnumero
    print "Ingrese un valor X: "
    numero=gets.chomp.to_i
    puts "El valor ingresado es #{numero}"
    return numero
end

def calcular(numero)
    num=numero
    cont=0
    puts"\nLos numeros primos anteriores a /#{numero}/ son:\n"
    if(numero>1)
       begin
            case
            when((num==2) or (num==3) or (num==5) or (num==7)) #debe estar esta primera porque si no, no me cuenta como primos 
                                                              #el 2,3,5 y 7 ya que estos son divisibles por varios numeros.
                puts"--> #{num}"
                num=num-1
                cont=cont+1 
            when((num%2==0) or (num%3==0) or (num%5==0) or (num%7==0))
                num=num-1 
            else #si el num no cumple ninguno de los dos when,entonces da a entender que es solo divisible por uno y por si mismo
                 #dando a entender que es un numero primo.
              puts".#{num}"
              num=num-1
              cont=cont+1
           end
        end until(num==1)
    end
    puts"\nTotal de números primos contados: #{cont}"
end

#main
system('clear')
puts"Diseñe un algoritmo modular (PROGRAMA) en el que se pueda ingresar un número X y el programa muestre
todos los números primos positivos anteriores a X.\n\n"
num=ingresarnumero
numprimos=calcular(num)

print"\nFín del programa."
anticierre=gets.chomp