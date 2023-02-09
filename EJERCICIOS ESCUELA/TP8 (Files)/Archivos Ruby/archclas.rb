class Archivo
   def initialize(arch,forma)
      @a = File.new(arch,forma)
   end
   def cerrar
     @a.close     
   end
   def incorporar(dato)
      @a.puts(dato)
   end
   def mostrar
      while not(@a.eof)
         puts @a.gets
      end
   end
end

newarch = Archivo.new("nuevo.dat","w")

newarch.incorporar("DARIO")
newarch.incorporar("EMA")
newarch.incorporar("DANTE")
newarch.incorporar("DIEGO")
newarch.incorporar("EDUARDO")
newarch.incorporar("ESTEBAN")
newarch.incorporar("ELENA")

newarch.cerrar


otroarch = Archivo.new("nuevo.dat","r")
otroarch.mostrar
otroarch.cerrar