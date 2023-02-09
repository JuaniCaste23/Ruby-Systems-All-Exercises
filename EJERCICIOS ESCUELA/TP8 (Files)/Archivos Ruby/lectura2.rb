arch=File.new("C:/Users/NetBialet/Desktop/nombres.DAT","a") #"r" == leer archivo #File.New --> Esta creando un nuevo objeto de la clase File. (De tipo archivo)
#en este caso ya existe el archivo
#copia=File.new("c:/Usuarios/NetBialet/Desktop/nombres.DAT","w") #"w" == escribe archivo en uno nuevo, guarda que se sobreescribe.
#"a" == este me hace escribir en el archivo pero conservo la escritura del mismo, sin borrarlo. Solo agrega al final

begin
    print"ingrese nombre: "
    nom=gets.chomp
    arch.puts(nom)
    print"agrega otro??? (s/n): "
    resp=gets.chomp
end until((resp=="N") or (resp=="n")) #este codigo usa un puntero que agrega el nombre al final de la columna. Al agregar otra cosa se va
#desplazando hacia abajo, pero siempre manteniendo el orden.
arch.close

arch=File.new("C:/Users/NetBialet/Desktop/nombres.DAT","r")
begin
    renglon=arch.gets.chomp
    puts renglon
    #copia.puts(renglon) #--> copia renglon anterior.
end until (arch.eof()==true) #eof significa fin del archivo, es una marca que me marca el fin del archivo.

#copia.close
arch.close #close me cierra el archivo #eof me indica cuando termino de cargar datos, hasta que sea true.