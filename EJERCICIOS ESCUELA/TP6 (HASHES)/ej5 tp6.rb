def ingresar_hash
    h=Hash.new
    for cont in 0..9
      system('cls')
      puts"-Ingrese un nombre y altura de una persona:"
      print"Nombre: "
      nombre=gets.chomp
      print"Altura: "
      altura=gets.chomp.to_f
      h[nombre]=altura
    end 
    system('cls')
    ordenar=h.sort_by { |clave, valor| [ -Integer(valor.to_f) ] }#ordena hash
    #-Integer(valor.to_f) es de mayor a menor, si quitamos esto sera viceversa.
    puts "Hash con nombres de personas y sus alturas:"
    hash=ordenar
    hash.each do |clave,valor|
      print"(#{clave} => #{valor}) " 
    end
    print"\n"
    return hash
end

def calcular(hash) 
    suma=0 ; cont=0 ; prom=0
    puts"\nAlturas Grandes:\n"
    hash.each do |clave,valor|
      if(valor>=1.75)
        suma=suma+valor
        cont=cont+1
        puts"#{clave} => #{valor}"
      end
    end 
    puts"----------------------------------------------------------"
    puts"Alturas Chicas:"
    hash.each do |clave,valor|
      if(valor<=1.50)
        suma=suma+valor
        cont=cont+1
        puts"#{clave} => #{valor}"
      end
    end
    puts"----------------------------------------------------------"
    puts"Alturas Medias:"
    hash.each do |clave,valor|
      if((valor>1.50) and (valor<1.75))
        suma=suma+valor
        cont=cont+1
        puts"#{clave} => #{valor}"
      end
    end
    puts"----------------------------------------------------------"
    prom=suma.to_f/cont
    puts"El promedio de las alturas es: #{prom.round(2)}"
end

#main
hash=ingresar_hash
calcular(hash)
print"\nFín del Programa."

anticierre=gets.chomp