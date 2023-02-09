class Cola 
    def initialize(nombres)
      @array=nombres
      @cola=Array.new
    end

    def azar
        for j in 0..9
          i=rand(0..9) 
          @cola[j]=@array[i]
        end
        puts"Seran atendidas las personas en el siguiente orden(COLA):"
        puts"#{@cola}"
        return @cola
    end

    def shift
        #@cola[0]=nil
        #@cola= @cola.compact
        @cola.shift
        return @cola
    end

    def size
      if(@cola.size==0)
          puts"Se ha atendido a la cola con éxito."
          puts"Gente restante en total --> #{@cola.size}"
        else
          puts"Falta gente para atender.\nPersonas que faltan:\n#{@cola}"
          puts"Falta gente para atender en total --> #{@cola.size}"
        end
    end
end

class Pila 
    def initialize(nombres)
        @array=nombres
        @pila=Array.new
    end

      def azar
        for j in 0..9
          i=rand(0..9) 
          @pila[j]=@array[i]
        end
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
colanuev=Cola.new(nombres)
pilanuev=Pila.new(nombres)

colanuev.azar
print"\n"
pilanuev.azar

print"\nCuantas personas desea atender en ambas funciones?: "
personas=gets.chomp.to_i
cont=personas-1
for i in 0..cont
  colanuev.shift
  pilanuev.pop
end
print"\n"
colanuev.size
puts
pilanuev.size

anticierre=gets.chomp