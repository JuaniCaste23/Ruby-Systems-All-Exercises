def escritura(control,nombre)
  if(control==false)
    arch=File.new("C:/Users/NetBialet/Desktop/#{nombre.to_s}","w")
  else(control==true)
    arch=File.new("C:/Users/NetBialet/Desktop/#{nombre.to_s}","a")
  end
  begin
    print"Ingrese un nombre: "
    nombre=gets.chomp
    arch.puts(nombre)
    print"Desea seguir ingresando? (s/n): "
    control=gets.chomp
  end until(control=="No" or control=="no" or control=="n" or control=="N")
  arch.close
end

def lectura(nombre)
    arch=File.new("C:/Users/NetBialet/Desktop/#{nombre.to_s}","r")
    begin
      renglon=arch.gets
      puts renglon
    end until(arch.eof()==true)
    arch.close
end

def control
    control=gets.chomp
    if(control=="no") or (control=="n") or (control=="No")
       return false
    else
        return true
    end
end


#main
print"Cual es el nombre del archivo a crear o modificar?: "
nombre=gets.chomp
system('cls')
if(File.exist?("C:/Users/NetBialet/Desktop/#{nombre.to_s}"))==true
    print"El archivo al que intenta acceder o crear existe, desea agregarle nombres? (s/n): "
    con=control
    if(con==true)
      escritura(con,nombre)
    end
else
    puts"El archivo: #{nombre.to_s} se cargara de nombres a elección."
    escritura(con,nombre)
end
puts "Se leera el archivo"
lectura(nombre)
#hasta que alguno llegue a final de archivo @eoc. ej3 tp8 #write read

recorrer un archivo para ver el sueldo mayor.. ej5 tp8

recorremos en modo lectura.. junta los importes y sueldos en dos arreglos. en dos variables y dps las mando al nombre.

recorro el string en ,