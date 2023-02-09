class Pila
    def initialize
        @q=Array.new
        @pila=Array.new
    end

    def encolar(linea)
        @pila.push(linea)
    end

    def desencolar(arch2)
        elem=@pila.pop
        arch2.puts(elem)
        return @pila
    end

    def lectura(arch2)
        arch2.each do |linea|
            puts linea
        end
    end

end

arch=File.new("C:/TP8 Archivos Ruby/Archivos/nombres","r")
arch2=File.new("C:/TP8 Archivos Ruby/Archivos/nombres_ej2","w")
pila=Pila.new
cont=0
arch.each do |linea|
    pila.encolar(linea)
    cont=cont+1
end
arch.close

for i in 0..cont
    pila.desencolar(arch2)
end
arch2.close

arch2=File.new("C:/TP8 Archivos Ruby/Archivos/nombres_ej2","r")
pila.lectura(arch2)

