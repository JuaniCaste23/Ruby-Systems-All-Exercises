def arreglo_rand(tam)
  array=[]
  for i in 0..tam
    array[i]=rand(1..99)
  end 
  return array
end

def ordenar(arreglo1,arreglo2)
  array_ord=arreglo1+arreglo2
  aux=""
  for i in 0..array_ord.length-2
     for j in i..array_ord.length-1
       if(array_ord[i]>array_ord[j])
         array_ord[i],array_ord[j]=array_ord[j],array_ord[i]
       end
      end
  end
  puts"Array ordenado: #{array_ord}"
  return array_ord
end

def quitar_duplicado(array_ord)
    i=array_ord.length-1
    while(i>=1)
      if(array_ord[i]==array_ord[i-1])
        array_ord[i]=nil
      end
      i=i-1
    end 
    array_ord.compact! #compact quita los nil
    puts
    puts"Array ordenado y sin duplicado: #{array_ord}"
end

#main
arreglo1=arreglo_rand(rand(100))
puts "Primer arreglo:"
print arreglo1
puts
arreglo2=arreglo_rand(rand(100))
puts "Segundo arreglo:"
print arreglo2
puts
puts
vector=ordenar(arreglo1,arreglo2)
quitar_duplicado(vector)
print"\nFín del Programa."

anticierre=gets.chomp