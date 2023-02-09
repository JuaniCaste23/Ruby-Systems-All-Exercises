def ingresar_notas
    notas_array=Array.new
    for i in 0..9
        print"Ingrese el nombre de la materia: "
        materia=gets.chomp.to_s
        print"Ingrese la Nota de la materia: "
        nota=gets.chomp.to_i
        aux=["#{materia}","#{nota}"] #array auxiliar que contiene materia y nota.
        notas_array.push(aux) #pusheo el arreglo auxiliar, en el primer elemento de notas_array voy a tener un mini arreglo que contiene la materia en el primer elemento y nota el segundo.
        puts"----------------------------------"
        aux=""
        #notas_array[i]=aux Segunda opcion
        #notas_array[0][0][1] estamos en el primer elemento del array notas, y luego con [0][1] vemos la materia y la nota
    end
    return notas_array
end

def promedios(notas_array)
    cont=notas_array.size-1 ; suma=0 ; promedio=0
    #IMPRIMIR ARREGLO CON MATERIA Y NOTA SEPARADO
    for i in 0..cont
        puts"Materia: #{notas_array[i][0]} / Nota: #{notas_array[i][1]}"
    end
    #HACE LA SUMA DEL PROMEDIO
    for i in 0..cont
        suma = suma + notas_array[i][1].to_f
    end
    promedio=suma / cont
    promedio=promedio.round(2) #esto lo que hace es para que quede solo con 2 decimales
    return promedio
end

#Cargue un array con 10 notas. Genere el array resultado con el promedio entre la nota[0] y la nota[9], nota[1] con nota [8] y así sucesivamente. Determine el promedio del vector resultado.
#main
system('cls')
notas=ingresar_notas
imprimir=promedios(notas)
puts"\n\nEl promedio general es: #{imprimir}"

anticierre=gets.chomp