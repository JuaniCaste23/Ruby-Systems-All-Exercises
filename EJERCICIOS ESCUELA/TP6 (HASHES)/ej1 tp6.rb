def calcular(incognita)
    h=Hash.new #esto es lo mismo que hacer h={}
    for x in -10..10
        h[x]=(x**2)+1 #"el simbolo ^ no funciona en ruby, por lo tanto se debe usar **"
    end
    h.each do |clave,valor|
       if(incognita==clave)
         puts "Resultado de la ecuación y=#{incognita}^2+1 = #{valor}"
       end
    end
    puts
    puts "Resultados de ecuaciones con hash: #{h}"
end

#main
system('cls')
print "Ingrese un numero que reemplaze la incognita en y=x^2+1: "
incognita=gets.chomp.to_i
calcular(incognita)
print"\nFín del Programa."

anticierre=gets.chomp