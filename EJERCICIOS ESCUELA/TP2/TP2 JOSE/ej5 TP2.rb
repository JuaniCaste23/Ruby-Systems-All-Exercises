def ingresar_cadena
    begin
      print "Ingrese una cadena: "
      cadena=gets.chomp
      puts "La cadena ingresada es: #{cadena}"
      if(cadena.length<7)
        puts "La cadena ingresada debe contener más de 6 caracteres."
      end
    end until(cadena.length>6)
    return cadena
  end

def ingresar_caracter
    enc=true
    begin
        print"Ingrese un caracter a su gusto: "
        caracter=gets.chomp.to_s
        if(caracter.length>1)
            puts"Debe ingresar un unico caracter."
            enc=false
        else
            enc=true
        end
    end until(enc==true)
    return caracter
end

def existe_caracter(cadena,caracter)
    i=0
    enc=true
    begin
        if(cadena[i]==caracter)
            enc=true
        else
            enc=false
        end
        i=i+1
    end until(enc==true or i==cadena.length)
    if(i==cadena.length)
        i=0
    end
    return i
end

#main
system('clear')
cad=ingresar_cadena
carac=ingresar_caracter
imprimir=existe_caracter(cad,carac)
if(imprimir>0)
  puts"El caracter #{carac} se encuentra en la posición #{imprimir} de la cadena #{cad}"
else
    puts"No existe el caracter en la cadena ingresada, retorno 0"
end