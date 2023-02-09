def diccionario
    h=Hash.new
    h["hola"]="Acción de saludar."
    h["chau"]="Acción de despedir"
    h["bien"]="Buen humor"
    h["mal"]="Mal humor"
    h["enjuanizado"]="Estar con dudas.."
    h["boca"]="Parte del cuerpo donde hablamos"
    h["agua"]="sustancia liquida"
    h["flor"]="planta normal de la tierra"
    h["nombre"]="sustantivo que indentifica a un individuo"
    h["windows"]="sistema operativo"
    return h
end

def ingresar_palabra(h)
    begin
        system('cls')
        print"Ingrese una palabra: "
        palabra=gets.chomp
        if (h.has_key?(palabra))
            print"#{h[palabra]}"
            puts
        else
          puts"No se ha encontrado la palabra a buscar."
        end
        print"¿Quiere seguir buscando palabras?: "
        control=gets.chomp
    end until(control=="no")
end

def comparacion(h)
   for i in 0..h.length-1
       #comparar longitud y comparación entre letras de la clave"palabra", si se acerca a un 70%
       #poner la definicion de esa palabra, sino, no existe.
   end
end


#main
hash=diccionario
ingresar_palabra(hash)
print"\nFín del Programa."

anticierre=gets.chomp
