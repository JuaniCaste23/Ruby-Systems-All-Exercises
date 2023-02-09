def ingresar_cadena
    enc=true
    begin
        print"Ingrese una cadena de no menos de 8 caracteres: "
        cadena=gets.chomp.to_s
        if(cadena.length>=8)
            enc=true
        else
            puts"Debe ingresar una cadena de no menos de 8 caracteres."
            enc=false
        end
    end until(enc==true)
    return cadena
end

def intercalar(cadena)
    aux=""
    i=0
    begin
        carac=rand(65..90).chr       
        aux=aux + cadena[i] 
        aux=aux + carac
        i=i+1
    end until(i==cadena.length)
    return aux
end

#main
cad=ingresar_cadena
imprimir=intercalar(cad)
puts"La cadena #{cad} intercalada con letras al azar es => #{imprimir}"

anticierre=gets.chomp