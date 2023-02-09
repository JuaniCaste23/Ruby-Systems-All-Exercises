def ingresarcadena()
    print "Ingrese una cadena de caracteres: "
    cadena=gets.chomp
    puts "La cadena ingresada es: #{cadena}"
    return cadena
end

def reverse(cadena)
    i=cadena.length-1
    aux=""
    begin
        aux=aux+cadena[i]
        i=i-1
    end until(i<0)
    puts "La cadena de caracteres de forma inversa es: #{aux}"
end

#main
system('clear')
puts"Escriba una función “inverso” que invierta una cadena de caracteres previamente ingresada. (No se
permite utilizar el método reverse de Ruby).\n\n"
cad=ingresarcadena
reverse(cad)

print"\nFín del programa."
anticierre=gets.chomp