class Cola
    def initialize
        @q= Array.new
    end

    def encolar(elem)
        @q[@q.size]=elem
    end

    def atender #El compact elimina los nil, al objeto Juan lo convierto en Nil, y este lo elimina.
        elem= @q[0]
        @q[0]= nil
        @q= @q.compact
        return elem
    end

    def size
        return @q.size
    end
end

#main
caja1= Cola.new

caja1.encolar("Juan")
caja1.encolar("Jose")
caja1.encolar("Pedro")

puts "Atiendo a:"
puts caja1.atender
puts "Atiendo a:"
puts caja1.atender
puts "Atiendo a:"
puts caja1.atender
puts "\nEl tamaño de la cola es: #{caja1.size}"

anticierre=gets.chomp