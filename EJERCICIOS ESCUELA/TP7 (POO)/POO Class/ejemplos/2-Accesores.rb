#Accesores de Lectura

#SIN Accesores

class Cancion
   def initialize(titulo,artista)
     @titulo=titulo
     @artista=artista
   end
   def titulo
     @titulo
   end
   def artista
     @artista
   end
end

cancion=Cancion.new("Divididos","Ala Delta")
puts cancion.titulo
puts cancion.artista

#CON Accesores

class Cancion
    def initialize(titulo,artista)
          @titulo=titulo
          @artista=artista
    end
    attr_reader :titulo, :artista
end

cancion=Cancion.new("Divididos","Ala Delta")
puts cancion.titulo
puts cancion.artista

class Cancion
    def initialize(titulo,artista,duracion)
        @titulo=titulo
        @artista=artista
        @duracion=duracion
    end
    attr_reader :titulo, :artista #esto es un SIMBOLO. #no permite escribir solo leer.
    attr_writer :duracion #no permite leer, solo escribir.
end

cancion=Cancion.new("Divididos","Ala Delta",250)
puts cancion.titulo
puts cancion.artista
cancion.duracion=248

#attr_accesor: alternativa para variables que hacen a la vez de reader y writer.
#En las variables de instancia, el nombre del obj es el mismo para todos.



