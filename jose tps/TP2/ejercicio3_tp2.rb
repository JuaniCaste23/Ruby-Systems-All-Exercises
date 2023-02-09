#Se desea calcular e imprimir el promedio de edad de los alumnos de la clase, suponiendo que se lleva un registro por cada uno conteniendo:
#Número de DNI, Nombre y Apellido, Edad

def base_de_datos
    registros=Hash.new 
             #N°     DNI, Nombre y Apellido,  
    registros["1"]=["26.535.136","Jose Ramirez","25"]
    registros["2"]=["41.386.385","Juan Castelli","22"]
    registros["3"]=["38.444.222","Marcos Jota","18"]
    registros["4"]=["33.535.136","Carla Solier","22"]
    registros["5"]=["46.532.136","Jose Vazquez","23"]
    registros["6"]=["32.522.136","Ignacio Cardozo","26"]
    registros["7"]=["45.522.136","Gerardo Sardinez","30"]
    registros["8"]=["22.515.136","Abigail Gomez","17"]
    registros["9"]=["30.511.136","Julian Albornoz","20"]
    registros["10"]=["47.908.136","Sofia Cordoba","21"]
    puts"Los registros de los alumnos son:"
    puts"----------------------------------------------------"
    registros.each do |id,datos|
        puts"ID: #{id}"
        puts"DNI #{datos[0]}"
        puts"Nombre y apellido: #{datos[1]}"
        puts"Edad: #{datos[2]}"
        puts"----------------------------------------------------\n\n"
    end
    return registros
end

def calcular_promedio(registros)
    puts"Pulse ENTER para continuar con el programa\n" 
    gets #apreto enter para seguir con el programa.
    promedio="" ; cont=registros.size ; suma=0
    registros.each do |id,datos|
        suma=suma+datos[2].to_f
    end
    promedio=(suma/cont).round(2) #promedio y el round le da los dos ultimos decimales para que no sea ej: 8,66666 . Con round es 8,66
    return promedio
end

#main
system('cls')
reg=base_de_datos
msj=calcular_promedio(reg)
puts"El promedio de Edad entre todos los alumnos es: #{msj}"

anticierre=gets.chomp