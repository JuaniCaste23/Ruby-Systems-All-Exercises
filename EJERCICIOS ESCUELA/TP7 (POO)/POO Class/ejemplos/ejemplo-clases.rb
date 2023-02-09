class Vehiculos
         def initialize(ddd)
              @duenio = ddd
         end
end

class Autos < Vehiculos
         def initialize()
              @@cant_ruedas = 4
         end
end

class Bicicletas < Vehiculos
         def initialize(ddd)
              @@cant_ruedas = 2
              @color="negro"
              super(ddd)
         end
         def mostrar_atributos
               puts "Cambios :  #{@cant_cambios}"
               puts "Color :  #{@color}"
               puts "Tipo :  #{@tipo}"
               puts "Rodado : #{@rodado}"
               puts "Duenio:  #{@duenio}"
               puts "Ruedas:  #{@@cant_ruedas}"
               puts " "
         end
         attr_accessor :cant_cambios, :color, :tipo, :rodado
         attr_writer :duenio
end

bici1=Bicicletas.new("dante")
bici1.cant_cambios = 18
bici1.color = "verde"
bici1.tipo = "playera"
bici1.rodado = 26
bici1.mostrar_atributos

bici2=Bicicletas.new("juana")
bici2.cant_cambios = 3
bici2.color = "roja"
bici2.tipo = "carrera"
bici2.rodado = 27.5
bici2.mostrar_atributos

bici3=Bicicletas.new("elena")
bici3.cant_cambios = 24
bici3.color = "azul"
bici3.tipo = "montania"
bici3.rodado = 29
bici3.mostrar_atributos


