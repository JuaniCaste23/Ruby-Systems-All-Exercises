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

class Persona

    def initialize()

        arry_nombre=["alexandr",    "alexandro",    "alexandre",    "alexandros",
        "alexei",    "alexio",    "alexis",    "alf",    "alfie",    "alfons",    "alfonse",    "alfonso",
        "alford",    "alfred",    "alfredo",    "alfy",    "algernon",    "ali",    "alick",    "alisander"]
        r=rand(0..19)
        @nombre=arry_nombre[r]
        @monto=0
        @califiacion=nil
    end

    attr_accessor :nombre,:califiacion,:monto

    def importe()
        r_importe=rand(0..2)
        arr_importes=["$10","$100","$1000"]
        @monto=arr_importes[r_importe]
    end

    def rand_calificacion()
        estado=["APTO","NO APTO"]
        num=rand(0..1)
        @califiacion=estado[num]
    end


end

def formato_columna(elem,espaciado)
    while (espaciado!=elem.size())
        elem=elem+" "
    end
    return elem
end




cola_nombre=Cola.new()
cola_servicios=Cola.new()

veces=rand(7..20)
begin
    
    cola_nombre.encolar(Persona.new())

end until(cola_nombre.size==veces)

begin
    #Se presta servicio a la primera cola
    elem=cola_nombre.desencolar()
    
    #Asigno un importe random a la persona que se le brindo el servicio
    elem.importe()
    cola_servicios.encolar(elem)
end until cola_nombre.size==0


print formato_columna("Nombre",15)
print formato_columna("Importe",15)
puts formato_columna("Calificacion",15)

begin 
    
    #Brindo servicios a la segunda cola
    elem=cola_servicios.desencolar()
    #Asigno una claificacion random a la persona
    elem.rand_calificacion()
    
    nombre=formato_columna(elem.nombre,15)
    monto=formato_columna(elem.monto,15)
    cali=formato_columna(elem.califiacion,15)

     linea=nombre+ monto+ cali

     puts linea
end until cola_servicios.size==0