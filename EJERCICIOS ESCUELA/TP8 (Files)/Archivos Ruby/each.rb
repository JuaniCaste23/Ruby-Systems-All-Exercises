arch=File.new("C:/Users/NetBialet/Desktop/PROGRAMACION 2/nombres.DAT","a") #"r" == leer archivo #File.New --> Esta creando un nuevo objeto de la clase File. (De tipo archivo)
#en este caso ya existe el archivo
#copia=File.new("c:/Usuarios/NetBialet/Desktop/nombres.DAT","w") #"w" == escribe archivo en uno nuevo, guarda que se sobreescribe.
#"a" == este me hace escribir en el archivo pero conservo la escritura del mismo, sin borrarlo. Solo al final de este

begin
    print"ingrese nombre"
    nom=gets.chomp
    arch.puts(nom)
    print"agrega otro??? (s/n)"
    resp=gets.chomp
end until((resp=="N") or (resp=="n"))
arch.close
arch=File.new("C:/Users/NetBialet/Desktop/nombres.DAT","r")
arch.each do|renglon| 
    puts renglon
end
arch.close #el close lo que hace es cerrar y guardar todo lo anterior a este comando. despues arranca de arriba
#el each reemplazaria el metodo de imprimir renglon en el archivo, osea no usaria el begin.