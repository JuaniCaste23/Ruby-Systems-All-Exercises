def ingresar_cadenas
    enc=true
    begin
      puts"Ingrese dos cadenas de igual tamaño\n\n"
      print"Ingrese una cadena con más de 5 caracteres: "
      cadena1=gets.chomp.to_s
      print"Ingrese otra cadena de igual tamaño: "
      cadena2=gets.chomp.to_s
       case
       when(cadena1.length<5 or cadena2.length<5)
          puts"-Las cadenas deben tener más de 5 caracteres."
          enc=false
       when(cadena1.length!=cadena2.length)
          puts"-Las cadenas deben tener el mismo tamaño."
          enc=false
       else
          enc=true
       end
    end until(enc==true)
    return cadena1,cadena2
end

def calcular(cadena1,cadena2)
    aux="" ; i=0 ; cont1=0 ; cont2=0
    for i in 0..cadena1.length-1
        if(cadena1[i]=="a" or cadena1[i]=="e" or cadena1[i]=="i" or cadena1[i]=="o" or cadena1[i]=="u")
            cont1=cont1+1
        end
        if(cadena2[i]=="a" or cadena2[i]=="e" or cadena2[i]=="i" or cadena2[i]=="o" or cadena2[i]=="u")
            cont2=cont2+1
        end
    end
    i=0
    case
    when(cont1>cont2) #sumar las dos cadenas en un aux
        aux=cadena1 + cadena2
    when(cont1<cont2) #intercalar las dos cadenas
        begin
             aux=aux + cadena1[i] + cadena2[i]
             i=i+1
        end until(i==cadena1.length)
    when(cont1==cont2) #sumo las dos cadenas dada vuelta
        aux=cadena2+cadena1
    end
    return aux
end

#main
system('clear')
cad1,cad2=ingresar_cadenas
imprimir=calcular(cad1,cad2)
puts"Imprimir --->>> #{imprimir}"

anticierre=gets.chomp