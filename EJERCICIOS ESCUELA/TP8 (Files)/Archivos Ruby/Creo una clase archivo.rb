class Archivo #esta clase me maneja el archivo.
    def initialize(arch,forma)
        @a=File.new(arch,forma)
    end
    def cerrar
        @a.close
    end
    def incorporar(dato)
        @a.puts(dato)
    end
    def mostrar
        while not(@a.eof) #not es lo mismo que poner ==false, mientras sea falso recorre.
            puts @a.gets
        end
    end
end

#main
newarch= Archivo.new("C:/Users/NetBialet/Desktop/nuevo.DAT","w") #creo un archivo DAT desde ruby.

newarch.incorporar("DARIO")
newarch.incorporar("EMA")
newarch.incorporar("DANTE")
newarch.incorporar("DIEGO")
newarch.incorporar("EDUARDO")
newarch.incorporar("ESTEBAN")
newarch.incorporar("ELENA")

newarch.cerrar

otroarch = Archivo.new("C:/Users/NetBialet/Desktop/nuevo.DAT","r")
otroarch.mostrar
otroarch.cerrar