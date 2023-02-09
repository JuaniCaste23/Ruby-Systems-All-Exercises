def arreglos_primera_alternativa(array_a,array_b)
   array_c=array_a + array_b
   puts
   puts"-Primera Alternativa, Sumo el arreglo A y el arreglo B en un arreglo C sin nada: #{array_c}"
   puts
end

def arreglos_segunda_alternativa(array_a,array_b)
  array_c=[]
  i=0 ; j=0
  begin
    array_c[j]=array_a[i]
    i=i+1
    j=j+1
  end until(i==array_a.size)
  i=0
  begin
    array_c[j]=array_b[i]
    i=i+1
    j=j+1
  end until(i==array_b.size)
  puts"-Segunda Alternativa, sumo de a un elemento al arreglo C sin nada: #{array_c}"
end

#main
array_a=["Lunes", "Martes", "Miercoles"] 
array_b=["Jueves", "Viernes", "Sabado", "Domingo"]
arreglos_primera_alternativa(array_a,array_b)
arreglos_segunda_alternativa(array_a,array_b)
print"\nFín del Programa."

anticierre=gets.chomp
