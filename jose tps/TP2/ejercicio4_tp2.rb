# La oficina de Recursos Humanos de una firma lleva una base de datos del  personal de la empresa, que se actualiza mensualmente. El registro se compone de:

#DNI del empleado    Nombre y Apellido    Categoría    Sueldo básico    Cantidad de días trabajados por mes.

#Se desea calcular e imprimir:

#a) la cantidad de empleados que trabajan más de 20 días por mes.
#b) la cantidad total de empleados de la firma.
#c) el porcentaje de empleados que no asistieron en todo el mes al trabajo (licencia, enfermedad, etc.) con respecto al total de empleados de la firma.

def base_de_datos
    registros=Hash.new 
              #ID     DNI,     Nombre y Apellido, Categoría, Sueldo Básico, Cantidad de días trabajados por mes (serian 26 dias).  
    registros["1"]=["26.535.136","Jose Ramirez","Empleado","20000","25"]
    registros["2"]=["41.386.385","Juan Castelli","Empleado","20000","22"]
    registros["3"]=["38.444.222","Marcos Jota","Empleado","20000","0"]
    registros["4"]=["33.535.136","Carla Solier","Empleado","20000","0"]
    registros["5"]=["46.532.136","Jose Vazquez","Empleado","20000","23"]
    registros["6"]=["32.522.136","Ignacio Cardozo","Gerente","40000","26"]
    registros["7"]=["45.522.136","Gerardo Sardinez","Secretario","320000","20"]
    registros["8"]=["22.515.136","Abigail Gomez","Empleado","20000","0"]
    registros["9"]=["30.511.136","Julian Albornoz","Empleado","20000","20"]
    registros["10"]=["47.908.136","Sofia Cordoba","Empleado","20000","21"]  

    registros.each do |id,datos|
        puts"ID: #{id}"
        puts"DNI #{datos[0]}"
        puts"Nombre y apellido: #{datos[1]}"
        puts"Categoria: #{datos[2]}"
        puts"Sueldo Básico: #{datos[3]}"
        puts"Cantidas de días trabajados por mes: #{datos[4]}"
        puts"----------------------------------------------------\n\n"
    end
    return registros
end

def calcular_cant_empleados_20_dias_por_mes(registros)
    cont=0 ; mensaje=""
    puts"Pulse ENTER para continuar con el programa\n" 
    gets #apreto enter para seguir con el programa.
    registros.each do |id,datos|
        if(datos[2]=="Empleado" and datos[4].to_i>20)
            cont=cont+1
        end
    end
    mensaje="La cantidad de empleados con más de 20 dias trabajados son #{cont}"
    return mensaje
end

def cant_total_empleados(registros)
    cont_total=0 ; mensaje=""
    registros.each do |id,datos|
        if(datos[2]=="Empleado")
            cont_total=cont_total+1
        end
    end
    mensaje="La cantidad totales de empleados son #{cont_total}"
    return mensaje,cont_total
end

def porcentaje_empleados_ausentes(registros,cont_total)
    cont=0 ; mensaje="" ; porcentaje=""
    registros.each do |id,datos|
        if(datos[2]=="Empleado" and datos[4].to_i==0)
            cont=cont+1
        end
    end
    porcentaje= ((cont * 100) / cont_total) #La cantidad de empleados que no fueron a trabajar por 100, dividido la cantidad total de empleados.
    mensaje="El porcentaje de empleados sin ir por mes con respecto a la cantidad de empleados totales es: #{porcentaje}%"
    return mensaje
end

#main
system('cls')
reg=base_de_datos
msj1=calcular_cant_empleados_20_dias_por_mes(reg)
msj2,cont=cant_total_empleados(reg)
msj3=porcentaje_empleados_ausentes(reg,cont)
puts"\nAhora siguiendo el ejercicio se calculo:\n-#{msj1}\n-#{msj2}\n-#{msj3}"

anticierre=gets.chomp