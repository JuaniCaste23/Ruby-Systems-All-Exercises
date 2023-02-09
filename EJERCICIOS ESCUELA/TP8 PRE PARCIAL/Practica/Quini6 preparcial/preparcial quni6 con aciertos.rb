def calcular(renglon,aciertos)
    aux="" ; cont=0 ; enc=false ; i=0 ; numeros=Array.new 
    begin
      if(renglon[i]!=",")
        aux = aux + renglon[i]
      else
        if(renglon[i]==",")
          numeros.push(aux)
          aux=""
        end
      end
      i=i+1
    end until(i==renglon.size)
    numeros.push(aux) #me pone el numero faltante, ya que al no contar con la coma al final, al final me deja libre este.

    for i in 0..numeros.size
      if((numeros[i]=="9") or (numeros[i]=="14") or (numeros[i]=="17") or (numeros[i]=="28") or (numeros[i]=="33") or (numeros[i]=="41"))
        cont=cont+1
      end
    end

    if(cont>=aciertos)
      enc=true
      return enc,numeros
    end
end

#main
system('cls')
arch=File.new("C:/TP8 Archivos Ruby/Archivos/numeros.dat","r")
quini=Hash.new ; i=1 ; j=1 
print"QUINI 6 ==> NUMEROS SORTEADOS (9,14,17,28,33,41)\nCuantos aciertos quiere intentar? (de 1 a 6): "
aciertos=gets.chomp.to_i
begin
  renglon=arch.gets.chomp
  enc,numeros=calcular(renglon,aciertos)
  if(enc==true)
    quini["GANADOR Nr#{j}, POSICION EN LA TABLA DEL QUINI SALIENTE: #{i}"] = numeros
    j=j+1
  end
  i=i+1
end until(arch.eof()==true)
arch.close
puts"\n-------------------------------"
quini.each do |ganador,valor|
  puts"--> #{ganador}\n--> TABLA GANADORA: #{valor}"
  puts"-------------------------------"
end
print"\nFín del programa."

anticierre=gets.chomp