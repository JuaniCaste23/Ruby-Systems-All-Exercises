def ingresar_cadena
    print"Ingrese su primer nombre: "
    nombre_1=gets.chomp.to_s
    print"Ingrese su segundo nombre: "
    nombre_2=gets.chomp.to_s
    print"Ingrese su apellido: "
    apellido=gets.chomp.to_s
    return nombre_1,nombre_2,apellido
end

def calcular(nombre_1,nombre_2,apellido)
    suma=nombre_1.size + nombre_2.size + apellido.size
    aux=""
    case
    when(suma<30)
        aux=nombre_1 + nombre_2 + apellido
        enc=true
    else
        aux=nombre_1 + nombre_2[0] + "." + apellido
        enc=false
    end
    return aux
end

#main
system('clear')
puts"Escribir un programa que permita escribir sus 2 (dos) nombres en una cadena  y su apellido (1) en la otra. 
Deberá realizar una concatenación de nombres y apellido si todos juntos no superan 30 caracteres;
de lo contrario deberá abreviar el segundo nombre poniendo la primera letra del mismo seguido de un punto.\n\n"
nom1,nom2,ape=ingresar_cadena
imprmir,enc=calcular(nom1,nom2,ape)
if(enc==true)
    puts"Es menor a 30 caracteres, entonces es: #{imprmir}"
else
    puts"Es mayor a 30 caracteres, entonces es: #{imprmir}"
end

anticierre=gets.chomp