def ingresarcadena()
    print"Ingrese una frase o oración: "
    cadena=gets.chomp
    return cadena
end

def comparar1(cadena) #que me verifique que cada palabra este separada por un unico espacio en blanco.
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

def comparar2(cadena) #esto me cuenta las palabras con el espacio en blanco
  cont=0
  i=0
  begin
   if(cadena[i]==" ")
      cont=cont+1
    end
    i=i+1
  end until(i==cadena.length)

  if(cont>=1)
    return true
  else
    puts"Debe ingresar más de una palabra"
    return false
  end
end

def comparar3(cadena) #lo unico que hace esto es que se fije que no me finalize con un espacio en blanco
  i=cadena.length-1
  if(cadena[i]==" ")
   puts"La cadena no debe finalizar con un espacio en blanco."
   return false 
  else
    return true
  end
end

def comparar4(cadena)
  if(cadena[0]==" ")
   puts"La cadena no debe empezar con un espacio en blanco."
   return false 
  else
    return true
  end
end

def contarpalabras(cadena)
    aux="" ; mostrar="" ; cont=0 ; enc=false ; i=0
    begin
      begin #esto lo que hace es guardarme en auxiliar una palabra hasta que me cuente el espacio o el fin de la cadena.
       aux=aux+cadena[i]
       cont=cont+1
       i=i+1
      end until((cadena[i]==" ") or (i==cadena.length))
      
      if(cont<5) #si la palabra tiene menos de 5 caracteres me guarda la auxiliar anterior en la variable mostrar (esto es para imprimir)
        mostrar=mostrar+aux
        enc=true
      end
      aux="" #se resetean las variables para que en el primer ciclo pueda usarlas nuevamente sin ningun valor.
      cont=0
      
      if(cadena[i]==" ") #como el primer ciclo finalizo con un espacio, lo que hace esto es que me salga de ese espacio en blanco para que me siga contando las palabras.
        aux=aux+cadena[i]
        i=i+1
      end
    end until(i==cadena.length)
    return mostrar,enc
end

#main
system('clear') #cls en windows
begin
  cad=ingresarcadena
  a=comparar1(cad)
  b=comparar2(cad)
  c=comparar3(cad)
  d=comparar4(cad)
end until((a==true) and (b==true) and (c==true) and (d==true))
imprimir,enc=contarpalabras(cad)

if(enc==true)
  puts"\nLas palabras con menos de 5 caracteres son: #{imprimir}"
else
  puts"\nNo habia palabras con menos de 5 caracteres."
end

anticierre=gets.chomp