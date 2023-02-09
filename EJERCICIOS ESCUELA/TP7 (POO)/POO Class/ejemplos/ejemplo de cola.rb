
class Cola
   def initialize
       @array=Array.new
   end

   def encolar(elem)
      @array.push(elem)
   end

   def mostrar_elementos
	  for i in 0..@array.size-1
	     puts @array[i]		
     end
   end

   def size
	   return @array.size
   end
end

#main
prioridades=Cola.new
for i in 0..9
   cola1.encolar(rand(99)) 	
end
cola1.mostrar_elementos
tam=cola1.cant_elementos
puts tam