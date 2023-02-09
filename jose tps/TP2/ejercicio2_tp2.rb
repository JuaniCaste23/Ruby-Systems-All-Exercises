#Se lleva un registro de calificaciones de alumnos en tres materia:

#Matemáticas, Historia y Geografía. (Obs.: Se supone que las tres notas son distintas) Se desea saber por cada alumno cuál es la calificación máxima y a qué materia corresponde, si se conoce por cada uno:

#Nº. DNI,  Nombre y Apellido, Nota Matemáticas, Nota Historia , Nota de Geografía     

def base_de_datos
    registros=Hash.new 
              #N°   DNI, Nombre y Apellido, Nota Matemáticas, Nota Historia , Nota de Geografía  
    registros["1"]=["26.535.136","Jose Ramirez","10","8","9"]
    registros["2"]=["41.386.385","Juan Castelli","9","7","8"]
    registros["3"]=["38.444.222","Marcos Jota","8","9","4"]
    registros["4"]=["33.535.136","Carla Solier","9","8","6"]
    registros["5"]=["46.532.136","Jose Vazquez","10","7","6"]
    registros["6"]=["32.522.136","Ignacio Cardozo","9","6","7"]
    registros["7"]=["45.522.136","Gerardo Sardinez","9","6","7"]
    registros["8"]=["22.515.136","Abigail Gomez","8","6","7"]
    registros["9"]=["30.511.136","Julian Albornoz","8","9","7"]
    registros["10"]=["47.908.136","Sofia Cordoba","10","5","8"]
    puts"Los registros de los alumnos son:"
    puts"----------------------------------------------------"
    registros.each do |id,datos|
        puts"N°: #{id}"
        puts"DNI #{datos[0]}"
        puts"Nombre y apellido: #{datos[1]}"
        puts"Nota Matematicas: #{datos[2]}"
        puts"Nota Historia: #{datos[3]}"
        puts"Nota Geografia: #{datos[4]}"
        puts"----------------------------------------------------\n\n"
    end
    return registros
end

def calcular_notas(registros)
    puts"Pulse ENTER para continuar con el programa\n" 
    gets #apreto enter para seguir con el programa.
    puts"La Nota máxima por Alumno:\n\n"
    puts"----------------------------------------------------"
    registros.each do |id,datos| 
        case 
        when((datos[2].to_i>datos[3].to_i) and (datos[2].to_i>datos[4].to_i))
            puts"-Nombre y Apellido: #{datos[1]}\n-Materia: Matematicas: #{datos[2]}"
        when((datos[3].to_i>datos[2].to_i) and (datos[3].to_i>datos[4].to_i))
            puts"-Nombre y Apellido: #{datos[1]}\n-Materia: Historia: #{datos[3]}"
        when((datos[4].to_i>datos[2].to_i) and (datos[4].to_i>datos[3].to_i))
            puts"-Nombre y Apellido: #{datos[1]}\n-Materia: Geografia: #{datos[4]}"
        end
        puts"----------------------------------------------------\n\n"
    end
end

#main
system('cls')
reg=base_de_datos
calcular_notas(reg)

anticierre=gets.chomp