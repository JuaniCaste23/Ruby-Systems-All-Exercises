def ingresarcadena
    print"Ingrese una cadena de caracteres: "
    cadena=gets.chomp.to_s
    puts"La cadena ingresada es: #{cadena}"
    return cadena
end

def ingresarcaracter
   begin
     print"Ingrese una letra que quisiera que busque en la cadena ingresada previamente: "
     caracter=gets.chomp.to_s
     if(caracter.length>1)
       puts "Solo debe ingresar una letra."
     end
   end until(caracter.length==1)
   return caracter
 end

def calcular(cadena,caracter)
    aux=""
    cont=0
    i=0
    begin
      if(cadena[i]==caracter)
         cont=cont+1
         i=i+1
      else
         aux=aux+cadena[i]
         i=i+1
      end
    end until(i==cadena.length)
    if(cont>=1)
       puts"La cadena ingresada pero sin la letra /#{caracter}/ es: #{aux}"
    else 
       puts"La cadena ingresada no contenia la letra /#{caracter}/ ingresada."
    end
end

#main
cad=ingresarcadena
carac=ingresarcaracter
calcular(cad,carac)

anticierre=gets.chomp