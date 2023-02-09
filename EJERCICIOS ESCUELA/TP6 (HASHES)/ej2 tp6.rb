def equipo_de_futbol(numeros,jugadores)
   system('cls')
   h=Hash.new
   for i in 0..numeros.length-1
      h[numeros[i]]=jugadores[i]
   end
   puts "El equipo ha elegir es:" 
   puts h
   puts
   return h
end

def ingresar_equipo
    i=0 ; j=0 ; array=[] ; num="" 
    print"Ingrese los numeros de su equipo (1..11) separados por guiones: "
    equipo=gets.chomp
    begin
      if(equipo[i]=="-") 
        array[j]=num
        i=i+1
        j=j+1
        num=""
      end
      num = num + equipo[i]
      i=i+1
      if(i==equipo.length)
        array[j]=num
      end
    end until(i==equipo.length)
    puts"Equipo elegido: #{equipo}"
    return array
end
          

def imprimir(h,array) 
    i=0 ; j=0 ; cont=0 ; team="" 
    begin
      h.each do |clave,valor|
        if(array[i]==clave)
          team = team + valor 
          cont=cont+1
        end
      end
      if(cont==0)
        team = team + "no existe"
      end
      cont=0
      i=i+1
      if(i!=array.length) 
        team=team+"-"
      end
    end until(i==array.length)
    puts "Su equipo es: #{team}"
end

#main
numeros=["1","2","3","4","5","6","7","8","9","10","11"]
jugadores=["Pato","Cata","Fabra","Ibarra","Gago","Schiavi","Guille","Paredes",
"Palermo","Riquelme","Maxi"]
hash=equipo_de_futbol(numeros,jugadores)
arreglo=ingresar_equipo
imprimir(hash,arreglo)
print"\nFín del Programa."

anticierre=gets.chomp