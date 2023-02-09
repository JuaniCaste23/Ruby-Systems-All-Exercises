def ingresar_cadena()
    print "Ingrese una cadena de caracteres: "
    cadena=gets.chomp
    return cadena
end

def calcular?(cadena)
    k=cadena.length-1
    cad=cadena.length
    validar=0
    if((cad>=5) and (cad<=20))
      validar=validar+1
    end

    if(((65..90)===cadena[0].ord) or ((97..122)===cadena[0].ord))
      validar=validar+1
    end

    if(cadena[k]==".")
      validar=validar+1
    end

    i=0
    cont=0
    begin
        if((48..57)===cadena[i].ord)
         cont=cont+1
        end
        i=i+1
    end until((i==cad) or (cont==1))
    if(cont==0)
       validar=validar+1
    end

    i=0
    cont=0
    begin
        if(cadena[i]==" ")
          cont=cont+1
        end
        i=i+1
    end until((i==cad) or (cont>3))
    if(cont<=3)
      validar=validar+1
    end

    if(validar==5)
      return true
    else
      return false
    end 
end

#main
cad=ingresar_cadena
if calcular?(cad)
  puts"Bien"
else
  puts"Mal"
end