#En la ciudad de Córdoba se lleva a cabo el censo de población y para su cómputo se diseña el siguiente registro:

#Apellido  ,   Nombre    ,  Sexo    ,   Edad  ,  Estado civil  ,   Fecha del censo
#El sexo se indica con: ‘F’ = Femenino;  ‘M’ = Masculino.
#El Estado Civil se indica con:  ‘S’ = Soltera/o;  ‘C’ = Casada/o; ‘T’ = Otros.

#Se desea calcular e imprimir:
#a)    La cantidad de mujeres menores de 15 años
#b)    La cantidad de  varones mayores de 18 años
#c)    La cantidad total de encuestados.
#d)    Nombre y Apellido  de  las  mujeres menores de 15 años casadas.

def base_de_datos
    registros=Hash.new 
            #  ID   Apellido,Nombre,Sexo,Edad,Fecha del censo,Estado Civil
    registros["1"]=["Ramirez","Jose","M","20","13/10/2010","C"]
    registros["2"]=["Castelli","Juan","M","17","13/10/2010","S"]
    registros["3"]=["Soler","Carla","F" ,"14","13/10/2010","C"]
    registros["4"]=["Alvarez","Sole","F","14","13/10/2010","C"]
    registros["5"]=["Henriquez","Abril","F","13","13/10/2010","S"]
    registros["6"]=["Cardozo","Ignacio","M","20","13/10/2010","S"]
    registros["7"]=["Sardinez","Gerardo","F","31","13/10/2010","C"]
    registros["8"]=["Gomez","Abigail","F","18","13/10/2010","C"]
    registros["9"]=["Albornoz","Julian","F","15","13/10/2010","C"]
    registros["10"]=["Cordoba","Sofia","F","15","13/10/2010","S"]

    puts"Los registros del censo son:"
    puts"----------------------------------------------------"
    registros.each do |id,datos|
        puts"ID: #{id}"
        puts"Nombre: #{datos[1]}"
        puts"Apellido: #{datos[0]}"
        puts"Edad: #{datos[3]}"
        puts"Sexo: #{datos[2]}"
        puts"Fecha del Censo: #{datos[4]}"
        puts"Estado Civil: #{datos[5]}"
        puts"----------------------------------------------------\n\n"
    end
    puts"Pulse ENTER para continuar con el programa\n" 
    gets #apreto enter para seguir con el programa.
    return registros
end

def calcular_cant_mujeres(registros)
    cont=0 ; mensaje=""
    registros.each do |id,datos|
        if(datos[2]=="F" and datos[3]<"15")
            cont=cont+1
        end
    end
    mensaje="La cantidad de mujeres menores a 15 años es: #{cont}"
    return mensaje
end

def calcular_cant_varones(registros)
    cont=0 ; mensaje=""
    registros.each do |id,datos|
        if(datos[2]=="M" and datos[3]>"18")
            cont=cont+1
        end
    end
    mensaje="La cantidad de varones mayores a 18 años es: #{cont}"
    return mensaje
end

def cant_total_encuestados(registros)
    cont=registros.size ; mensaje=""
    mensaje="La cantidad de encuestados es: #{cont}"
    return mensaje
end

def nom_ape_mujeres(registros)
    puts"-Los nombres y apellidos de las mujeres menores de 15 años son:"
    registros.each do |id,datos|
        if(datos[2]=="F" and datos[5]=="C" and datos[3]<"15")
            puts"#{datos[1]} #{datos[0]}"
        end
    end
end

#main
system('cls')
reg=base_de_datos
msj1=calcular_cant_mujeres(reg)
msj2=calcular_cant_varones(reg)
msj3=cant_total_encuestados(reg)
puts"\nAhora siguiendo el ejercicio se calculo:\n-#{msj1}\n-#{msj2}\n-#{msj3}\n"
msj4=nom_ape_mujeres(reg)

anticierre=gets.chomp