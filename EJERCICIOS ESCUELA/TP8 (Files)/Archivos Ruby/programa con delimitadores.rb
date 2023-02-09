def ingrese_datos
 
 begin
    print"Ingrese nombre: "
    nombre=gets.chomp
    print"Ingrese numeros: "
    numeros=gets.chomp.to_i
    print"Ingrese DNI: "
    dni=gets.chomp.to_i
    print"Desea seguir ingresando? (s/n): "
    control=gets.chomp
 end until(control=="n")
 return nombre,numeros,dni
end

#main
arch=File.new("C:/Users/NetBialet/Desktop/base_de_datos.DAT","w")
nombre,numeros,dni=ingrese_datos ; i=0
begin
    renglon=(nombre.to_s + "," + numeros.to_s + "," + dni.to_s)
    arch.puts(renglon)
end until(arch.eof()==true)

arch.close