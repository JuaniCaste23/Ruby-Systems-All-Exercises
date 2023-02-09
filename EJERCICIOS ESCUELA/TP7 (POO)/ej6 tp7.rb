class Lista
  def initialize(aux)
    @aux=aux
    @array=Array.new
  end

  def azar #asigna nombres al azar a un arreglo (cola/pila)
    for j in 0..9
      i=rand(0..9) 
      @array[j]=@aux[i]
    end
    puts"Seran atendidas las personas en el siguiente orden:"
    puts"#{@array}"
    return @array
  end

  def push #agregar nuevas personas a un arreglo (cola/pila)
    @array.push(elem)
  end
 
  def size
    if(@array.size==0)
      puts"Se ha atendido a la fila con éxito."
      puts"Gente restante en total --> #{@array.size}"
    else
      puts"Falta gente para atender.\nPersonas que faltan:\n#{@array}"
      puts"Falta gente para atender en total --> #{@array.size}"
    end
  end
end

class Cola < Lista 
    def initialize(aux)
      super(aux)
    end

    def shift #saca a la primera persona de una cola
      #@cola[0]=nil
      #@cola= @cola.compact
      @array.shift
      return @array
    end
end

class Pila < Lista
    def initialize(aux)
      super(aux)
    end

    def pop #saca el ultimo elemento de una pila
      #i=@pila.size-1 
      #@pila[i]=nil
      #@pila= @pila.compact
      @array.pop
      return @array
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