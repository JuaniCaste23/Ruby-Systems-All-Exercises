def ingresar_numero
    print "Ingresar un numero al azar: "
    numero=gets.chomp.to_i
    puts "El numero ingresado es: #{numero}"
    return numero
end

def ingresar_caracter
    print "Ingresar un caracter al azar: "
    caracter=gets.chomp
    puts "El caracter ingresado es: #{caracter}"
    return caracter
end

def dibujar(num,car)
    cont=num
    begin
        cont=cont-1
        cont.times do
         print "#{car}"
        end 
        puts "#{car}"
    end until(cont==0)
    return cont
end


#main
num=ingresar_numero
car=ingresar_caracter
dibujo=dibujar(num,car)