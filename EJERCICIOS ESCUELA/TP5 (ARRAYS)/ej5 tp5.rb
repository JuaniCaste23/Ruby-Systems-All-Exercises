def arreglo_rand
  array=[]
  for i in 0..499
    array[i]=rand(1..99)
  end 
  puts"Arreglo desordenado:"
  puts"#{array}"
  return array
end

def metodo_sort(array)
    inicio=Time.now
    array.sort! #si le quito el signo de admiracion, no vuelve ordenado.
    fin=Time.now
    dif=fin-inicio
    puts
    puts"Método sort: tardo en hacerse: #{dif.round(2)}"
    puts"#{array}"
    puts
end

def metodo_tradicional(array)
  inicio=Time.now ; aux=""
    for i in 0..array.length-2
      for j in i..array.length-1
        if (array[i]>array[j])
          aux=array[i]
          array[i]=array[j]
          array[i]=aux
        end
      end
    end
    fin=Time.now
    dif=fin-inicio
    #defino un cronometro, el inicio y fin, y luego lo resto en una variable dif.
    puts"El metodo tradicional tardo en hacerse: #{dif.round(2)}"#round convierte flotante a decimal ()
    puts"#{array}"
end

def mensaje_final(met1,met2)
  puts
  if(met1==met2)
    puts"Ambos metodos son iguales."
  else
    puts"Ambos metodos son distintos."
  end
end

#main
array=arreglo_rand
met1=metodo_sort(array)
met2=metodo_tradicional(array)
mensaje_final(met1,met2)
print"\nFín del Programa."

anticierre=gets.chomp