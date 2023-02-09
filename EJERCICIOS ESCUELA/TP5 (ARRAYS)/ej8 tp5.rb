def arreglo_dados
  array=[]
  for i in 0..499
    array[i]=rand(1..6)
  end 
  puts"#{array}"
  return array
end

def comparar(array)
  array_2=array
  resultado=[]
  i=0 ; k=0 ; cont=0 ; cont2=0
  for j in 0..array.length-1
    begin
      if(array_2[i]==array[j])
        cont=cont+1
      end
      i=i+1
    end until(i==500)
    if(cont>cont2)
      cont2=cont
      resultado[k]=array[j]
      k=k+1
    end
    i=0
    cont=0
  end 
  puts"Los resultados mas obtenidos fueron: #{resultado} --> han salido un total de: #{cont2} veces."
end

#main
dados=arreglo_dados
comparar(dados)
print"\nFín del Programa."

anticierre=gets.chomp

