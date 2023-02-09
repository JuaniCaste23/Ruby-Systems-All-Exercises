def ingresarcadena
    print"ingrese una cadena: "
    cadena=gets.chomp
    return cadena
end


def comparar1(cadena)
    if((65..90)===cadena[0].ord) or ((97..122)===cadena[0].ord)
      return true
    else
      puts"Debe comenzar con una letra"
      return false
    end
end

def comparar2(cadena)
    i=cadena.length-1
    if(cadena[i]==".")
      return true
    else
      puts"Debe terminar con un punto"
      return false
    end
end

def comparar3(cadena)
    i=0
    begin
        if((48..57)===cadena[i].ord)
           puts"No debe contener numeros"
           return false
        else
           i=i+1
        end
    end until(i==cadena.length)
    if(i==cadena.length)
      return true
    end
end

def comparar4(cadena)
    cad=cadena.length
    if(cad>=5) and (cad<=20)
      return true
    else 
      puts"Debe ser entre 5 y 20 caracteres"
      return false
    end
end

def comparar5(cadena)
    i=0 ; cont=0
    begin
        if(cadena[i]==" ")
           cont=cont+1
        end
        i=i+1
    end until(i==cadena.length) or (cont>3)
    if(cont>3)
      puts"No debe tener mas de 3 espacios"
      return false
    else
      return true
    end
end     

def calcular(cadena,sub1,sub2,sub3,sub4,sub5)
    enc=false
    if(sub1==true) and (sub2==true) and (sub3==true) and (sub4==true) and (sub5==true)
        enc=true
    else
        enc=false
    end
end

#main
cad=ingresarcadena
sub1=comparar1(cad)
sub2=comparar2(cad)
sub3=comparar3(cad)
sub4=comparar4(cad)
sub5=comparar5(cad)
calcular(cad,sub1,sub2,sub3,sub4,sub5)
