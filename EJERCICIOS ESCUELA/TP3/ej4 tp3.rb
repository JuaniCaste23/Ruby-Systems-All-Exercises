def ingresarcadena()
    print "Ingrese una cadena de caracteres: "
    cadena=gets.chomp
    return cadena
end

def comparar1(cadena)
  i=0
  cont=0
  begin
    if(cadena[i]==" ")
      i=i+1
    end
    if(cadena[i]==" ")
      cont=cont+1
    else
      i=i+1
    end
  end until((i==cadena.length) or (cont==1))
 if(cont==1)
    puts"La cadena debe tener un solo espacio en blanco entre palabras."
    return false
 else
    return true   
 end
end

def comparar2(cadena)
  i=cadena.length-1
  if(cadena[i]!=".")
    puts"La cadena debe finalizar con un punto."
    return false
  else
    return true   
 end
end

def calcular(cadena)
  cont=0
  i=0
  begin
    if(cadena[i]==(" "))
      cont=cont+1
    end
    i=i+1
  end until(i==cadena.length-1)
  if((cont>0) or (i>0))
    cont=cont+1
  end
  puts"La cantidad de palabras que hay en la cadena son: #{cont}"
end

#main
system('clear')
puts"Realizar un programa donde el usuario ingrese una cadena de caracteres finalizada en un punto, y el programa
retorne la cantidad de palabras ingresadas.\n\n"
begin
  cad=ingresarcadena
  a=comparar1(cad)
  b=comparar2(cad)
end until((a==true) and (b==true))
calcular(cad)

print"\nFín del programa."
anticierre=gets.chomp