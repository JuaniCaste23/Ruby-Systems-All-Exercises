def ingresar_valor()
    print"Ingrese un valor al azar: "
    valor= gets.chomp.to_i
    puts "El valor ingresado es: #{valor}"
    return valor
end

def comparar(valor)
    if(valor==0)
       puts "Ha ingresado 0, no corresponde ni a par ni impar, ingrese de nuevo otro valor."
       return false
    else 
        if(valor%2==0)
            puts "El valor es PAR"
            return true
        else
            puts "El valor es IMPAR"
            return true
        end
   end
end
   

#main
system('clear')
puts"Diseñe un algoritmo modular (PROGRAMA) que determine si un valor ingresado por el usuario es par o impar. Si
el valor ingresado es cero, debe volver a solicitar su ingreso. Considere que los valores se introducen en el
programa principal. Indique cómo se pasan los parámetros al subprograma.\n\n"
begin
    num=ingresar_valor
end until((comparar(num))==true)

print"\nFín del programa."
anticierre=gets.chomp