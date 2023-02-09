def calcular(renglon)
    aux="" ; i=0 ; numeros=Array.new 
    begin #agarra el renglon en formato de string y voy metiendo en un arreglo todos los numeros del renglon, sin la coma.
      if(renglon[i]!=",")
        aux = aux + renglon[i]
      else
        if(renglon[i]==",")
          numeros.push(aux) #el push(aux) asigna al arreglo numeros los numeros que saco del string.
          aux="" #los numeros los guardo en una variable aux, cuando el indice se posicione en una coma, la aux se borra 
        end      #y despues el indice avanza, se carga de nuevo el aux con numeros hasta llegar a lo mismo de arriba.
      end
      i=i+1
    end until(i==renglon.size) #el ciclo finaliza cuando recorra todo el renglon.
    numeros.push(aux) #me pone el numero faltante, ya que al no contar con la coma al final me deja libre este.
    return numeros
end

def contador(numeros)
    cont=0
    for i in 0..numeros.size #cuento cuantos numeros son validos en el arreglo, del quni6
      if((numeros[i]=="9") or (numeros[i]=="14") or (numeros[i]=="17") or (numeros[i]=="28") or (numeros[i]=="33") or (numeros[i]=="41"))
        cont=cont+1
      end
    end

    if(cont==6) #si llego a 6 numeros afirmativos, devuelvo el arreglo y una variable que me diga true.
      enc=true
      return enc,numeros
    end
end

def impresion(quini)
  puts"-------------------------------"
  quini.each do |ganador,valor| #me imprime a los ganadores, en este caso solo hay uno.
    puts"--> #{ganador}\n--> TABLA GANADORA: #{valor}"
    puts"-------------------------------"
  end
  print"\nFín del programa."
end

#main
system('cls')
arch=File.new("C:/TP8 Archivos Ruby/Archivos/numeros.dat","r")
quini=Hash.new ; i=1 ; k=1
begin
  renglon=arch.gets.chomp
  array=calcular(renglon)
  enc,numeros=contador(array)
  if(enc==true) #si tengo true, en un hash guardo al ganador y el arreglo ganador que salieron los 6 del quini.
    quini["GANADOR Nr#{k}, POSICION EN LA TABLA DEL QUINI SALIENTE: #{i}"] = numeros
    k=k+1
  end
  i=i+1 #el i suma la posicion en la tabla del arreglo ganador
end until(arch.eof()==true)
arch.close
impresion(quini)

anticierre=gets.chomp