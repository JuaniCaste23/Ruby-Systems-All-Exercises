def ingresarcadena()
   begin
     print "Ingrese una cadena de caracteres: "
     cadena=gets.chomp
     puts "La cadena ingresada es: #{cadena}"
     if(cadena.length<21)
       puts "La cadena ingresada debe contener más de 20 caracteres."
     end
   end until(cadena.length>20)
   return cadena
end

def calcular(cadena)
    cont1=0 ; cont2=0 ; cont3=0 ; cont4=0 ; cont5=0
    i=0
    begin
        if((cadena[i]=="A") or (cadena[i]=="a"))
           cont1=cont1+1
        else
           if((cadena[i]=="E") or (cadena[i]=="e"))
              cont2=cont2+1
           else
               if((cadena[i]=="I") or (cadena[i]=="i")) 
                  cont3=cont3+1
               else
                  if((cadena[i]=="O") or (cadena[i]=="o"))
                      cont4=cont4+1
                  else
                      if((cadena[i]=="U") or (cadena[i]=="u"))
                         cont5=cont5+1 
                      end
                  end
               end
          end   
       end
       i=i+1
    end until(i==cadena.length) 
    puts"-La cadena tiene de cantidad de vocales (A): #{cont1}"
    puts"-La cadena tiene de cantidad de vocales (E): #{cont2}"
    puts"-La cadena tiene de cantidad de vocales (I): #{cont3}"
    puts"-La cadena tiene de cantidad de vocales (O): #{cont4}"
    puts"-La cadena tiene de cantidad de vocales (U): #{cont5}"
end

#main
system('clear')
puts"Escriba un programa que permita ingresar una cadena de más de 20 caracteres e informe cuantas vocales (de
cada una) hay en la cadena ingresada.\n\n"
cad=ingresarcadena
calcular(cad)

print"\nFín del programa."
anticierre=gets.chomp