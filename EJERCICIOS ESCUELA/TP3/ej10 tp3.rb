def ingresarcadena()
    print "Ingrese una cadena de caracteres: "
    cadena=gets.chomp
    return cadena
end

def comparar(cadena)
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
    i=cadena.length-2
    begin
      if((cadena[i]==" ") or (13==cadena[i].ord))
        i=i-1
      else
        cont=cont+1
        i=i-1
      end
    end until(i<0)
    puts"La cantidad de caracteres ingresados son: #{cont}"
end

#main
begin
  cad=ingresarcadena
end until((comparar(cad))==true)
calcular(cad)

anticierre=gets.chomp
