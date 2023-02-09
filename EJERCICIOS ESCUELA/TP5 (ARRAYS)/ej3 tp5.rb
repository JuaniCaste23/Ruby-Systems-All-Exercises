def arreglo_rand
  array=[]
  for i in 0..99
    array[i]=rand(-999..-1)
  end 
  return array
end

def metodo_uniq(array)
  array.uniq!
  puts
  puts"Método uniq:"
  puts"#{array}"
  puts
end

def metodo_tradicional(array)
  array_b=[]
  cont=0 ; i=0 ; k=0
  for j in 0..array.length-1
    begin
      if(array[i]==array[j])
        cont=cont+1
      end
      i=i+1
    end until((i==100) or (cont==2))
    if(i==100)
      array_b[k]=array[j]
      k=k+1
    end
    i=0
    cont=0
  end 
  puts"Método tradicional:"
  puts"#{array_b}"
end

#main
array=arreglo_rand
metodo_uniq(array)
metodo_tradicional(array)
print"\nFín del Programa."

anticierre=gets.chomp
