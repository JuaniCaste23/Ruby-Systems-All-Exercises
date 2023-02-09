def ingresar_cadena()
  begin
    print "Ingrese una cadena: "
    cadena=gets.chomp
    puts "La cadena ingresada es: #{cadena}"
    if(cadena.length<7)
      puts "La cadena ingresada debe contener más de 6 caracteres."
    end
  end until(cadena.length>6)
  return cadena
end


def ingresar_caracter()
  begin
    print"Ingrese un caracter que quisiera que busque en la cadena ingresada previamente: "
    caracter=gets.chomp
    if(caracter.length>1)
      puts "Solo debe ingresar un caracter."
    end
  end until(caracter.length==1)
  return caracter
end

def existe_caracter(cadena,caracter)
  cont=0 ; posiciones=Array.new
  i=0
  begin
    if(cadena[i]==caracter) 
      cont=cont+1
      posiciones.push(i)
    end
    i=i+1
  end until(i==cadena.length)
  
  if(cont>0)
    puts"La posición de /#{caracter}/ en la cadena es: #{posiciones}"
  else 
    puts"El caracter no existe. 0"
  end
end

#main
system('clear')
puts"Escriba una función llamada “existe_caracter” que realice la búsqueda de un carácter en una cadena
previamente ingresada. La cadena ingresada deberá tener más de 6 caract. Deberá retornar su posición si
existe (o cero si no existe).\n\n"
cad=ingresar_cadena
carac=ingresar_caracter
existe_caracter(cad,carac)

print"\nFín del programa."
anticierre=gets.chomp