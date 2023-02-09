class Lista
    def initialize()
        @arry=Array.new()
    end

    def remove(pos)
        if pos<@arry.size()
            @arry[pos]=nil
            @arry=@arry.compact()
        else
            puts "Posicion #{pos} no es una posicion valida para eliminar"
        end
    end
    

    def size()
        return @arry.size()
    end
    
    def print()
        @arry.each do |a|
            puts a
        end
    end




    protected
    def add(elem)
        @arry.push(elem)
    end


    def first()
        return @arry[0]
    end

    def last()
        return @arry.last()
    end
end

class Cola < Lista

    def initialize()
        super()
    end

    def desencolar()
        if size()>0
            aux=first()
            remove(0)
            return aux
        else
            puts "No hay mas elementos en la Cola"
        end
    end

    def encolar(elem)
        add(elem)
    end
end

class Pila < Lista
    def initialize()
        super()
    end

    def apilar(elem)
        add(elem)
    end

    def desapilar()
        if size()>0
            aux=last()
            remove(@arry.size-1)
            return aux
        else
            puts "No hay elementos para desapilar"
        end
    end

    def invertirpila()
        arry_aux=[]
        begin
            arry_aux.push(desapilar())
        end until (size==0)
        
        @arry=arry_aux
    end

    def separar_pares_impares()
            
        pila_pares=Pila.new()
        pila_impares=Pila.new()
        
        begin
            elem=desapilar()
            if(elem%2==0)
                pila_pares.apilar(elem)
            else
                pila_impares.apilar(elem)
            end

        end until(size()==0) 

        pila_impares.invertirpila()
        pila_pares.invertirpila()

        return pila_pares,pila_impares
        
        
    end

    def print()
        i=@arry.size
        begin
            i=i-1
            puts @arry[i]
        end until i==0
    end
end


class ColaPrioridad < Cola
    def initialize()
        super()
    end

    
    def desencolar_prioridad()
        max_pri=-1
        pos=0
        for i in 0..@arry.size()-1
            elem=@arry[i]
            if elem[0]>max_pri
                pos=i
                max_pri=elem[0]     
            end
        end
        elem=@arry[pos]
        remove(pos)
        return elem
    end

    def desencolar_prioridad_min()
        min_pri=9999999
        pos=0
        for i in 0..@arry.size()-1
            elem=@arry[i]
            if elem[0]<min_pri
                pos=i
                min_pri=elem[0]     
            end
        end
        elem=@arry[pos]
        remove(pos)
        return elem
    end

    def encolar(priorida,elem)
        elem=[priorida,elem]
        add(elem)
    end

    
end




def figuritas(h,arry)

    arry.each do |elem|
        elem=elem.to_i
        if h.has_key?(elem)
            h[elem]=h[elem]+1
        else
            h[elem]=1
        end
    end

end




arch=File.new("./numeros.dat","r")
h=Hash.new()
arch.each do |linea|
    linea=linea.split(",")
    figuritas(h,linea)
end

print h
cp=ColaPrioridad.new()
h.each do |k,v|
    cp.encolar(v,k)
end

puts "Las  figuritas mas raras son:"
for i in 1..5
    elem=cp.desencolar_prioridad_min
    print "El elemento ",elem[1], " aparece ",elem[0]
    puts
end    