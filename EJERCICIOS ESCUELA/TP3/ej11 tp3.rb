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
  aux=""
  cont=0
  i=0
  begin
    if(cadena[i]==" ")
      cont=cont+1
      begin
       i=i+1
      end until(cadena[i]!=" ") or (i==cadena.length)
    else
      begin
        aux=aux+cadena[i]
        i=i+1
      end until(cadena[i]==" ") or (i==cadena.length)
      if(i<cadena.length)
        aux=aux+" "
      end
    end
  end until(i==cadena.length)



  if(cont==0)
    puts"La cadena ingresada: #{cadena} No contenia espacios en blanco."
  else
    puts"La cadena según el ejercicio es: #{aux}"
  end
end

#main
begin
  cad=ingresarcadena
end until((comparar(cad))==true)
calcular(cad)

anticierre=gets.chomp