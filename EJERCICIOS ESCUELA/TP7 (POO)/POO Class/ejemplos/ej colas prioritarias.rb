class Cola
   def initialize
      @cola=Array.new
   end

   def encolar(elem)           
      @cola.push(Array.new[propiedad,elem])
      return @cola
   end

   def desencolar
      @cola.shift
      return @cola
   end
end

class Colap < Cola
   def initialize
      #@c=Array.new
      super()
   end

   def desencolarmax
      for i in 0..@cola.size-1
         if(@cola[i][0]==5)
            @cola[i]=nil
            @cola.compact
         end
      end
   end

   def size
      print @cola
   end
end 

#main
cola=Colap.new
for i in 0..3
   propiedad=rand(1..5)
   print"ingrese algo: "
   algo=gets.chomp
   cola.encolar(propiedad,algo)
end

for i in 0..3
   cola.desencolarmax
end

cola.size