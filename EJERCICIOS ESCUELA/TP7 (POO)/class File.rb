arch=File.new("c:/Usuarios/NetBliatet/Desktop/nombres.dat","r") #"r" == leer archivo #File.New --> Esta creando un nuevo objeto de la clase File. (De tipo archivo)
#en este caso ya existe el archivo

begin
    renglon=arch.gets.chomp
    puts renglon
end until (arch.eof()==true)

arch.close #close me cierra el archivo #eof me indica cuando termino de cargar datos, hasta que sea true.