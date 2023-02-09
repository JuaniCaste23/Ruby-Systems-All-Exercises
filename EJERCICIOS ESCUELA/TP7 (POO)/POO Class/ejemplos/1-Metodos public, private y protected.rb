#Metodo public, por defecto mostrado al ejemplo son publicos

class Persona
   def habla 
     puts"habla"
   end

   def canta
     puts"canta"
   end
end

carlitos=Persona.new
carlitos.habla

#Metodo protected

class Nombres
    def initialize(dado,familia,apodo,mascota)
         @dado=dado
         @familia=familia
         @apodo=apodo
         @mascota=mascota
    end
    def mostrarnombre
         puts @dado
    end
    private
    def mostrarapodo
        puts @apodo
    end
    protected
    def mostrarmascota
        puts @mascota
    end
end

nombre=Nombres.new("Juan","Herrera","Cacho","Tuerquita")
nombre.mostrarnombre
#nombre.mostrarapodo
#nombre.mostrarmascota

#Metodo protected/private
class Persona
    def es_mayor_que?(p)
         self.edad>p.edad
    end
    
    protected
    def edad
        calcular_edad
    end

    private
    def calcular_edad
        rand(99)
    end
end

juan=Persona.new
antonio=Persona.new
puts juan.es_mayor_que?(antonio)
#antonio.edad
#juan.calcular_edad

#todo lo que este afuera de la clase no lo voy a poder ejecutar(Lo que esta con numerao), 
#sin embargo si estuviera, dentro de la clase, se podria ejecutar.

#private=trabaja solo para el obj actual que reciba
#protected=es para todos los obj

