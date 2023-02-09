

def ganadores(arry,cant)
   h={9=>false,14=>false,17=>false,28=>false,33=>false,41=>false}
   arry.each do |numero|

        numero=numero.to_i
      
        if h.has_key?(numero)
            h[numero]=true
        end
    end
  
    aciertos=0
    h.each do |key,value|
        if value==true
            aciertos=aciertos+1
        end
    end
    if aciertos>=cant
        return true
    else
        return false
    end

end



arch=File.new("C:/TP8 Archivos Ruby/Archivos/numeros.dat","r")
i=1
puts "Ingrese la cantidad de aciertos 1-6"
num=gets.chomp.to_i
arch.each do |lineas|
     arry=lineas.split(',')
     if ganadores(arry,num)
        puts  "encontre ganador en la linea #{i}"
     end
     i=i+1
end

arch.close()