def ingresar_numeros_azar
   array=Array.new
   for i in 0..20
     array[i]=rand(0..100)
   end
   return array
end

class Pila 
    def initialize(azar)
        @pilaorig=azar
        @pilapar=Array.new
        @pilaimpar=Array.new
    end
    
    def nuevaspilas
        i=0 ; j=0
        for k in 0..@pilaorig.size-1
            if(@pilaorig[k]%2==0)
              @pilapar[i]=@pilaorig[k]
              i=i+1
            else 
              @pilaimpar[j]=@pilaorig[k]
              j=j+1
            end
        end
        puts"Mi pila original es: #{@pilaorig}\n"
        puts"\nMi pila par es: #{@pilapar}\n"
        puts"\nMi pila impar es: #{@pilaimpar}"
    end
    
      def pop
          #i=@pila.size-1 
          #@pila[i]=nil
          #@pila= @pila.compact
          @pilaorig.pop
          @pilapar.pop
          @pilaimpar.pop
          return @pilaorig,@pilapar,@pilaimpar
      end
  
      def size
        if((@pilaorig.size==0) and (@pilapar.size==0) and (@pilaimpar.size==0))
            puts"Se han atendido a las pilas con éxito."
          else
            puts"Falta números para atender."
            puts"Pila Orig#{@pilaorig}\nPila Par#{@pilapar}\nPila Impar#{@pilaimpar}"
          end
      end
end
    
#main
system('cls')
azar=ingresar_numeros_azar
pilanuev=Pila.new(azar)

pilanuev.nuevaspilas

print"\nCuantos numeros desea sacar de las pilas?: "
num=gets.chomp.to_i
cont=num-1
for i in 0..cont
  pilanuev.pop
end
print"\n"
pilanuev.size

anticierre=gets.chomp