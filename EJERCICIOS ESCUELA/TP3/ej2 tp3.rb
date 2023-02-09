def ingresarcadena()
   begin
     print "Ingrese una cadena de caracteres: "
     cadena=gets.chomp
     puts "La cadena ingresada es: #{cadena}"
     if(cadena.length<20)
       puts "La cadena ingresada debe contener más de 20 caracteres."
     end
   end until(cadena.length>20)
   return cadena
end

def calcular(cadena)
    aux=""
    cont=0
    i=0
    begin
      if((cadena[i]=="a") or (cadena[i]=="e") or (cadena[i]=="i") or (cadena[i]=="o") or (cadena[i]=="u"))
         aux=aux+(' ')
         cont=cont+1
      else
         aux=aux+cadena[i]
      end
      i=i+1
    end until(i==cadena.length)
    if(cont>=1)
       puts"La cadena ingresada pero sin vocales es: #{aux}"
    else
       puts"La cadena ingresada no contiene vocales."
    end
end

#main
system('clear')
puts"Escriba un programa que permita ingresar una cadena de más de 20 caracteres y devuelva la misma cadena
pero sin vocales.\n\n"
cad=ingresarcadena
calcular(cad)

print"\nFín del programa."
anticierre=gets.chomp