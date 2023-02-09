class Personas

    def initialize(nombre,dni,ocupacion,sexo)
        @nombre=nombre
        @dni=dni
        @ocupacion=ocupacion
        @sexo=sexo
    end

    attr_accessor :nombre,:dni,:ocupacion,:sexo

end

class Transaccion

    def initialize()
        @trans=[]
        @total=0
    end

    def agregar_transaccion(fecha,monto)
        @trans.push([fecha,monto])
        @total=@total+monto
    end

    def total()
        return @total
    end
end