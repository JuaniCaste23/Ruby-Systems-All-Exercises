def cargar_notas
    system('cls')
    array=[]
    for i in 0..9
      print"Ingrese una nota: "
      nota=gets.chomp.to_i
      array[i]=nota
    end
    system('cls')
    puts"-Notas ingresadas:"
    puts"#{array}\n"
    return array
end

def array_resultado(array)
    i=0 ; j=9 ; k=0 ; suma=0 ; resultado=[]  #promedio=suma/cantidad
    for cont in 0..4
        suma = array[i] + array[j]
        resultado[k] = suma.to_f / 2
        suma=0
        i=i+1
        j=j-1
        k=k+1
    end 
    puts"-Vector Resultado = Promedios de a dos notas:"
    puts"#{resultado}\n"
    return resultado
end

def promedio(resultado)
    suma=0 
    for i in 0..4
      suma = suma + resultado[i]
    end
    promedio = suma.to_f / 10
    puts"-El Promedio del Vector Resultado es: #{promedio}"
end

#main
notas=cargar_notas
resultados=array_resultado(notas)
promedio(resultados)
print"\nFín del Programa."

anticierre=gets.chomp