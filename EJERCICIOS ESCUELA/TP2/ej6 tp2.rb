def ingresarpalabra()
    print"Ingrese una cadena de caracteres: "
    cadena=gets.chomp.to_s
    puts"La cadena ingresada es: #{cadena}"
    return cadena
end

def comparar(cad1,cad2)
    i=cad1.length
    j=cad2.length
    if((i>5) and (j>5) and (i==j))
       return true
    else
       puts "Ambas cadenas deben tener más de 5 caracteres y tener el mismo tamaño."
       return false
    end
end

def calcular(cad1,cad2)
    cad_1=cad1.length
    cad_2=cad2.length
    aux=""
    cont1=0
    cont2=0
    i=0
    begin
      if((cad1[i]=="a") or (cad1[i]=="e") or (cad1[i]=="i") or (cad1[i]=="o") or (cad1[i]=="u"))
         cont1=cont1+1
      end
      i=i+1
    end until(i==cad_1)

    i=0
    begin
      if((cad2[i]=="a") or (cad2[i]=="e") or (cad2[i]=="i") or (cad2[i]=="o") or (cad2[i]=="u"))
         cont2=cont2+1
      end
      i=i+1
    end until(i==cad_2)

    if(cont1==cont2)
       puts"Ambas cadenas tienen las misma cantidad de vocales, por lo tanto se mostraran separadas: #{cad1} #{cad2}"
    end

    if(cont1>cont2) 
       aux=aux+cad1+cad2  
       puts"La primera cadena tiene más vocales que la segunda cadena ingresada, por lo tanto se sumaran ambas cadenas: #{aux}"
    end

   i=0
   if(cont2>cont1)
      begin
         aux=aux+cad1[i]
         aux=aux+cad2[i]
         i=i+1
      end until((i==cad_1) and (i==cad_2))
      puts"La segunda cadena tiene más vocales que la primera cadena ingresada, por lo tanto se intercalaran ambas cadenas: #{aux}"
   end
end

#main
system('clear')
puts"Ingresar dos cadenas de igual tamaño, mayores a 5 caract. Volver a solicitar su ingreso si las cadenas no
tienen igual tamaño. Luego, si la primera cadena tiene más vocales que la segunda, unir ambas cadenas en
una nueva cadena, caso contrario generar una nueva cadena intercalando cada letra de la primer cadena con
cada letra de la segunda cadena y así sucesivamente.\n\n"
begin
  cadena1=ingresarpalabra
  cadena2=ingresarpalabra
end until((comparar(cadena1,cadena2))==true)
calcular(cadena1,cadena2)

print"\nFín del programa."
anticierre=gets.chomp