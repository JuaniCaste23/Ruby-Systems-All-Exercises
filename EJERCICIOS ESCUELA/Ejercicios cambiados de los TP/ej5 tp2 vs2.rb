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
  cont=0
  i=0
  begin
    if(cadena[i]==caracter) 
      puts"La posición del caracter #{caracter} es: #{i}."
      cont=cont+1
      i=i+1
    else
      i=i+1
    end
  end until(i==cadena.length)
  
  if(cont==0)
     puts"El caracter no existe. 0"
  end
end

#main
cad=ingresar_cadena
carac=ingresar_caracter
existe_caracter(cad,carac)

anticierre=gets.chomp