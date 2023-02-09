class Pila 
    def initialize(nombres)
        @array=nombres
        @pila=Array.new
        
    end

    def generarpila
        @i=rand(1..14)
        @pila=[@i]
        return @pila
    end

      def azar
        for j in 0..@i.size-1
          i=rand(0..9) 
          @pila[j]=@array[i]
        end
        @pila=@pila.uniq
        puts"Seran atendidas las personas en el siguiente orden(PILA):"
        puts"#{@pila}"
        return @pila
    end
        
      def pop
          #i=@pila.size-1 
          #@pila[i]=nil
          #@pila= @pila.compact
          @pila.pop
          return @pila
      end
  
      def size
        if(@pila.size==0)
            puts"Se ha atendido a la pila con éxito."
            puts"Gente restante en total --> #{@pila.size}"
          else
            puts"Falta gente para atender.\nPersonas que faltan:\n#{@pila}"
            puts"Falta gente para atender en total --> #{@pila.size}"
          end
      end
end
    

#main
system('cls')
nombres=["Juan","Gino","Ignacio","Jose","Sol","Abril","Quiara","Seba","Franco","Moni"]
pilanuev=Pila.new(nombres) #uniq.

pilanuev.generarpila
pilanuev.azar

print"\nCuantas personas desea atender en la pila?: "
personas=gets.chomp.to_i
cont=personas-1
for i in 0..cont
  pilanuev.pop
end
print"\n"
pilanuev.size

anticierre=gets.chomp