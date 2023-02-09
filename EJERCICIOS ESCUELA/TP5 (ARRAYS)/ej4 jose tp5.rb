def reverse(colores)
    #metodo reverse: da vuelta un arreglo.
    print "Arreglo con inverse: #{colores.reverse}"
end

def tradicional(colores)
    aux=Array.new
    i=colores.size-1
    begin
        aux.push(colores[i])
        i=i-1
    end until(i<0)
    print"\n\nArreglo tradicional: #{aux}"
end

#main
system('cls')
colores = ["rojo", "verde", "azul", "negro", "celeste", "blanco"]
reverse(colores)
tradicional(colores)