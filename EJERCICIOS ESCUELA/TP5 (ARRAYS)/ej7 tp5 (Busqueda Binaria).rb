def rand_array
  system('cls')
  array=[]
  for i in 0..49
    array[i]=rand(1..499)
  end
  return array
end

def metodo_sort(array)
  ord=array.sort! #metodo de ordenamiento de ruby.
  ord=ord.uniq!   #metodo que saca los duplicados de ruby.
  puts
  puts"Arreglo Generado al azar ordenado y sin duplicado:"
  puts"#{ord}"
  puts
  return ord
end

def ingresar_dato(ord)
  print"Ingrese un dato: "
  dato=gets.chomp.to_i
  return dato
end

def busqueda_binaria(ord,dato) 
  #Sumo el primer elemento con el ultimo elemento, y lo divido por 2. El resultado pasa a ser un
  #elemento y ese elemento tiene un valor, ese valor lo comparo con el dato ingresado. En caso de
  #de no ser igual, veo si el valor es mas chico o mas grande que el dato. Dependiendo del caso,
  #si es mas chico, solo tomo el primer elemento y lo sumo con el elemento que me dio, y si es
  #al revez, el ultimo elemento con el elemento que me dio. De esos resultados de nuevo lo 
  #divido por dos, miro el elemento que me quedo, y comparo el valor de ese elemento con 
  #el dato nuevamente, si da, la busqueda binaria habra tenido efecto, si no, seguira la busqueda
  #hasta que el valor sea negativo (-1 o n..)
  puts
  puts"Se realizara una BUSQUEDA BINARIA del dato ingresado."
  i=0 ; j=ord.length-1 ; cont=0
  mitad= (i + j) / 2
  while((i < j) and (ord[mitad].to_i != dato)) #&& es igual a and.
    if (dato < ord[mitad].to_i)
      j= mitad - 1
      cont=cont + 1
    else
      i= mitad + 1
      cont=cont + 1
    end
    mitad= (i + j) / 2
  end
  
  if(dato == ord[mitad].to_i)
    puts"-Se ha encontrado el valor, en la posición: --> #{mitad}"
    puts"-Veces que se realizo la busqueda binaria: ---> #{cont}"
  else
    puts"-No se ha encontrado el valor."
  end
end

#main
numeros=rand_array
sort=metodo_sort(numeros)
dato=ingresar_dato(sort)
busq=busqueda_binaria(sort,dato)
print"\nFín del Programa."

anticierre=gets.chomp