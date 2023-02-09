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
  cont=0
  i=0
  begin
   if(cadena[i]==" ")
      cont=cont+1
      i=i+1
    else
      i=i+1
    end
  end until(i==cadena.length)
 
  if(cont>=1)
    return true
  else
    puts"Debe ingresar más de una palabra."
    return false
  end
end
  
def comparar3(cadena)
    i=cadena.length-1
    if(cadena[i]!=".")
      puts"La cadena debe finalizar con un punto."
      return false
    else
      return true   
    end
end


def contarpalabras(cadena)
  aux=""
  mostrar=""
  cont=0
  validar=0
  i=0
  begin
    begin
      aux=aux+cadena[i]
      cont=cont+1
      i=i+1
    end until((cadena[i]==" ") or (i==cadena.length))
    
    if(cont==4)
      mostrar=mostrar+aux
      validar=validar+1
    end
    aux=""
    cont=0
    
    if(cadena[i]==" ")
      aux=aux+cadena[i]
      i=i+1
    end
  end until(i==cadena.length)

  if(validar>=1)
    puts"Las palabras con solo 4 caracteres son: #{mostrar}"
  else
    puts"No habia palabras que tuvieran solo 4 caracteres."
  end
end

#main
begin
  cad=ingresarcadena
  a=comparar1(cad)
  b=comparar2(cad)
  c=comparar3(cad)
end until((a==true) and (b==true) and (c==true))
contarpalabras(cad)

anticierre=gets.chomp