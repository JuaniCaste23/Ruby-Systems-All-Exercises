class Vehiculo
	def initialize(velocidad)
		@velocidadMax = velocidad
	end
end


class Auto < Vehiculo
    def initialize(modelo, marca)
		puts "Velocidad maxima del vehiculo: "
		velocidad = gets.chomp
		super(velocidad)
		@modelo = modelo
        @marca = marca
    end

    def arrancar
        puts "el auto arrancó"
		puts "su velocidad máxima es: " + @velocidadMax.to_s
    end

    def apagar
        puts "el auto se apagó"
    end

    def detalles
        puts @marca
        puts @modelo
    end

    def romperse
        puts "El #{@modelo} se rompió"
    end
end


class Moto
    def initialize(modelo)
        @modelo = modelo
    end

    def arrancarMoto
        puts "la moto arrancó"
    end

    def apagar

    end
end

# main
puts "Marca auto 1:"
marcaAuto = gets.chomp
puts "Modelo auto 1:"
modeloAuto = gets.chomp

miauto = Auto.new(modeloAuto, marcaAuto)
miauto.arrancar
miauto.apagar
miauto.detalles

gets