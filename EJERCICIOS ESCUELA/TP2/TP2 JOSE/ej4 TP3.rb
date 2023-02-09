puts"Realizar un programa donde el usuario ingrese una cadena de caracteres finalizada en un punto, 
y el programa retorne la cantidad de palabras ingresadas."

def ingresar_cadenas
    begin
      print"Ingrese una cadena de caracteres: "
      cadena=gets.chomp.to_s
      final=cadena.length-1
      case
      when(cadena[final]!=".")
        puts"-La cadena de caracteres debe finalizar con un punto."
        enc=false
      when(cadena[0]==" ")
        puts"-La cadena no debe comenzar con un espacio en blanco."
        enc=false
      else
        enc=true
      end
    end until(enc==true)
    return cadena
end

def calcular(cadena)
    cont=0
    i=0
    begin
       if(cadena[i]==" " or cadena[i]==".")
         cont=cont+1
       end
       if(cadena[i]==" ")
         begin
            i=i+1
         end until(cadena[i]!=" " or cadena[i]==".")
        end
        i=i+1
    end until(i==cadena.length)
    return cont
end

#main
system('clear')
cadena=ingresar_cadenas
imprimir=calcular(cadena)
puts"La cantidad de palabras ingresadas en la cadena son #{imprimir}"