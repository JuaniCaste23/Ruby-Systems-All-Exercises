def ingresarnumero()
    print "Ingrese un numero: "
    valor=gets.chomp.to_i
    puts "El valor ingresado es: #{valor}"
    return valor
end

def factorial(valor) 
    num=valor
    factorial=1
    begin
      if(valor>0)  
          factorial=factorial*valor
          valor=valor-1 
      end
    end until(valor==0)
    if(num==0)
        puts "El factorial del valor #{num} es: 0"
    else
        puts "El factorial del valor #{num} es: #{factorial}" 
    end
end

#main
system('clear')
puts"Diseñe un algoritmo modular (PROGRAMA) que calcule el factorial de un número ingresado por el usuario.
Considere que el valor a calcular se introduce en el programa principal. P.ej: 9! = 9x8x7x6x5x4x3x2x1 = 362880\n\n"
num=ingresarnumero
factorial(num)

print"\nFín del programa."
anticierre=gets.chomp