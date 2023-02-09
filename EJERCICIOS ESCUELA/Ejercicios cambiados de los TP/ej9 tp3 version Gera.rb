def fin_punto(cadena)
    punto = false
    if cadena[cadena.length-1].ord == 46
        return !punto
    end
    return punto
end

def encuentra_palabras(cadena)
    i=0
    palabra = ""
    begin
        if cadena[i] !=" " && cadena[i] != "."
            palabra = palabra + cadena[i]
        else
            if palabra.length == 4
                puts palabra
            end
            palabra = ""
        end
        i +=1
    end until (i==cadena.length)
end

#main
cadena=""
print "ingrese una cadena de caracteres finalizada en punto: "
loop do
    cadena = gets.chomp
    if fin_punto(cadena)
        break
    else
        print "La cadena debe finalizar en punto, intente nuevamente: "
    end
end
encuentra_palabras(cadena)