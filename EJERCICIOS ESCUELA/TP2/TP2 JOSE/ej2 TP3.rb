def ingresar_cadena
    begin
        print"Ingrese una cadena de mas de 20 caracteres: "
        cadena=gets.chomp.to_s
        if(cadena.length<21)
            puts"La cadena debe contener mas de 20 caracteres."
            enc=false
        else
            enc=true
        end
    end until(enc==true)
    return cadena
end

def calcular(cadena)
    aux="" ; i=0
    begin
        if((cadena[i]!="a") and (cadena[i]!="e") and (cadena[i]!="i") and (cadena[i]!="o") and (cadena[i]!="u"))
            aux=aux+cadena[i] #es que ahi si es ditinto no deberia poner vocals
        end
        i=i+1
    end until(i==cadena.length)
    return aux
end

#main
system('clear')
puts"Escribe un programa que permite ingresar una cadena de mas de 20 caracteres y devuelva la misma cadena sin vocales."
cad=ingresar_cadena
imprimir=calcular(cad)
puts"La cadena #{cad} sin vocales es: #{imprimir}"

anticierre=gets.chomp