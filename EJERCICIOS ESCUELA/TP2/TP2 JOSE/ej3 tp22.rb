def ingresar_palabra
    print"Ingrese una cadena: "
    cadena=gets.chomp.to_s
    return cadena
end

def invertir(cadena)
    aux=""
    cad=cadena.length-1
    #begin
      #  aux=aux+cadena[i]
      #  i=i-1
    #end until(i<0)
    for i in cad..0
        aux=aux+cadena[i]
        i=i-1
    end
    puts"La cadena invertida es #{aux}" 
end

#main
palabra=ingresar_palabra
hola=invertir(palabra) 
