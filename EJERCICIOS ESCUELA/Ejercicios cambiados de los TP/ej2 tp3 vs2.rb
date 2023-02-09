def ingresarcadena
   begin
     print "Ingrese una cadena: "
     cadena=gets.chomp
     puts "La cadena ingresada es: #{cadena}"
     if(cadena.length<21)
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
         cont=cont+1
         i=i+1
      else
         aux=aux+cadena[i]
         i=i+1
      end
    end until(i==cadena.length)
    if(cont>=1)
       puts"La cadena ingresada pero sin vocales es: #{aux}"
    else
       puts"La cadena ingresada no contiene vocales."
    end
end

#main
cad=ingresarcadena
calcular(cad)

anticierre=gets.chomp