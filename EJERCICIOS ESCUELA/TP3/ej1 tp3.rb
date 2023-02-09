def ingresarpalabra()
   begin
    print"Ingrese una cadena de caracteres: "
    cadena=gets.chomp
    if(cadena.length<11)
       puts"La cadena ingresada debe ser mayor a 10 caracteres"
    end
   end until(cadena.length>10)
   return cadena
end

def ingresarcaracter()
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
      if((cadena[i]==caracter) or (cadena[i]==caracter))
         aux=aux+(' ')
         cont=cont+1
      else
         aux=aux+cadena[i]
      end
      i=i+1
    end until(i==cadena.length)
    if(cont>=1)
       puts"La cadena ingresada pero sin la letra /#{caracter}/ es: #{aux}"
    else 
       puts"La cadena ingresada no contenia la letra /#{caracter}/ ingresada."
    end
end

#main
system('clear')
puts"Realizar un programa donde el usuario ingrese un string (de más de 10 caracteres) y una letra (de un solo
carácter) y retorne un string que no contenga la letra ingresada."
cad=ingresarpalabra
carac=ingresarcaracter
calcular(cad,carac)

print"Fín del programa."
anticierre=gets.chomp