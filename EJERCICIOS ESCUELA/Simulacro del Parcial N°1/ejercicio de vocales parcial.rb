def ingresarcadena
    print"ingrese una cadena de caracteres: "
    cad=gets.chomp
    return cad
end

def calcular(cad)
    largo=cad.length
    aux=""
    i=0
    begin 
        if(cad[i]=="a") or (cad[i]=="e") or (cad[i]=="i") or (cad[i]=="o") or (cad[i]=="u")
          i=i+1
        else
          aux=aux+cad[i]
          i=i+1
        end
    end until(i==largo)
    puts"#{aux}"
end

#main
cadena=ingresarcadena
calcular(cadena)