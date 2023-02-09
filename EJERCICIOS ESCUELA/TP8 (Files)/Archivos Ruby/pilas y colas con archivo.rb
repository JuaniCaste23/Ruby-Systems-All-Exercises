class Cola
    def initialize
        @q=Array.new
    end
    def encolar(dato) #si o si tengo que encolar a alguien en la cola(array).
        @q.push(dato)
    end
    def servicio #atiende al primero siempre.
        @q.shift
    end
    def cola_vacia?
        if(@q.size==0)
          return true
        else
            return false
        end
    end
end

#main
mic=Cola.new
arch=File.new("C:/Users/NetBialet/Desktop/archivo.DAT","r")
begin
    renglon=arch.gets.chomp
    mic.encolar(renglon)
end until(arch.eof()==true)
arch.close

while (mic.cola_vacia?()==false)
    a=mic.servicio
    puts a
end

if (mic.cola_vacia?) #encapsulamiento = el arreglo es una cola.
    puts"Esta Vacia"
else
    puts"Esta Llena"
end