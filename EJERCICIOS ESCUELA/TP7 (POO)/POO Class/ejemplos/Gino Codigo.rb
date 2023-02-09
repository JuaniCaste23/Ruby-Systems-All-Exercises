class Fabrica
    def initialize(nombre)
        @nombre = nombre 
        @autos = Hash.new
        @motos = Hash.new
        @autos_objeto = Array.new
        @motos_objeto = Array.new 
        @vehiculosConstruidos = 0
    end
    attr_reader :nombre
    attr_accessor :autos, :vehiculosConstruidos

    def mostrarMenu()
        puts
        puts "**** Panel de control - #{self.nombre} ****"
        puts "1. Ver estadísticas"
        puts "2. Fabricar auto"
        puts "3. Fabricar moto"
        puts "4. Vender"
        puts "5. Usar"
        
        print "Acción: "
        num = gets.chomp.to_i
        puts

        case num
        when 1 then
            estadisticas()
        when 2 then
            fabricarAuto()
        when 3 then
            fabricarMoto()
        when 4 then
            vender()
        when 5 then
            usar()
        end

    end

    private 
    def estadisticas()

        puts "Vehículos construidos: #{@vehiculosConstruidos}"
        puts "Dinero: $#{$dinero}"
        puts "ENTER para continuar."
        gets
        mostrarMenu()

    end

    def fabricarAuto()

        print "¿Cuál es el nombre del auto?: "
        nombre = gets.chomp

        begin
            print "¿Cuál será el precio de venta?: $"
            precio = gets.chomp.to_i
            precioFabricacion = 0.3*precio
            puts "Precio de fabricación: #{precioFabricacion}"
            patente = asignarPatente()
            if precioFabricacion > $dinero
                puts "El precio de fabricación supera al dinero estipulado. Disminuir el precio de venta"
            end
        end until(precioFabricacion < $dinero)

        $dinero = $dinero - precioFabricacion
        puts "Patente otorgada: #{patente}"

        print "Motor (ej: 1.6L): "
        motor = gets.chomp

        nombre = nombre + " (" + patente + ")"

        @autos_objeto.push(Auto.new(nombre, precio, @autos, motor))
        @vehiculosConstruidos = @vehiculosConstruidos + 1

        mostrarMenu()
    end

    def fabricarMoto()
        print "¿Cuál es el nombre de la moto?: "
        nombre = gets.chomp

        begin
            print "¿Cuál será el precio de venta?: $"
            precio = gets.chomp.to_i
            precioFabricacion = 0.3*precio
            puts "Precio de fabricación: #{precioFabricacion}"
            patente = asignarPatente()
            if precioFabricacion > $dinero
                puts "El precio de fabricación supera al dinero estipulado. Disminuir el precio de venta"
            end
        end until(precioFabricacion < $dinero)

        $dinero = $dinero - precioFabricacion
        puts "Patente otorgada: #{patente}"

        print "Cilindrada (ej: 110cc): "
        cilindrada = gets.chomp

        nombre = nombre + " (" + patente + ")"
        @motos_objeto.push(Moto.new(nombre, precio, @motos, cilindrada))
        @vehiculosConstruidos = @vehiculosConstruidos + 1
        mostrarMenu()
    end

    def asignarPatente()

        patente = ""
        3.times do
            letra = rand(65..90)
            letra = letra.chr
            patente = patente + letra.to_s
        end
        patente = patente + "-"
        3.times do
            num = rand(0..9)
            patente = patente + num.to_s
        end      
        return patente

    end

    def vender()

        puts "\t \t ¿Qué vender?"
        puts "\t 1. Autos \t 2. Motos"
        print "Acción: "
        n = gets.chomp.to_i

        if n == 1
            # auto
            id = 0

            @autos.each {|nombre, precio|
            puts "#{nombre} \t $#{precio} \t #{@autos_objeto[id].kilometraje} km"
            id = id + 1
            }

            print "¿Cual auto vender? (Nombre y Patente): "
            decision = gets.chomp

            if @autos.key?(decision)
                $dinero = $dinero + @autos[decision]
                @autos.delete(decision)
                puts "Auto vendido. Dinero actual: $#{$dinero}. ENTER para continuar"
                gets
            else
                puts "El auto a vender no existe. Chequear nombre y patente."
            end

            mostrarMenu()
        else
            # moto
            id = 0
            @motos.each {|nombre, precio|
            puts "#{nombre} \t $#{precio} \t #{@motos_objeto[id].kilometraje} km"
            id = id + 1
            }

            print "¿Cual moto vender? (Nombre y Patente): "
            decision = gets.chomp

            if @motos.key?(decision)
                $dinero = $dinero + @motos[decision]
                @motos.delete(decision)
                puts "Moto vendida. Dinero actual: $#{$dinero}. ENTER para continuar"
                gets
            else
                puts "La moto a vender no existe. Chequear nombre y patente."
            end
            mostrarMenu()
        end
    end

    def usar()
        puts "¿Quieres usar un auto o una moto?"
        puts "1. Auto --- 2. Moto"

        begin
            x = gets.chomp
        end until(x == "1" or x == "2")

        if x == "1"
            puts "**** Identificación autos ****"
            id = 0

            @autos.each {|nombre, precio|
            puts "ID: #{id} - #{nombre} \t $#{precio}"
            id = id + 1
            }

            print "¿Qué auto quieres usar? ESCRIBIR ID: "
            seleccion = gets.chomp.to_i
            puts "Estas manejando el auto: " + @autos_objeto[seleccion].nombre
            @autos_objeto[seleccion].usar
        else
            puts "**** Identificación motos ****"
            id = 0

            @motos.each {|nombre, precio|
            puts "ID: #{id} - #{nombre} \t $#{precio}"
            id = id + 1
            }

            print "¿Qué motos quieres usar? ESCRIBIR ID: "
            seleccion = gets.chomp.to_i
            puts "Estas manejando la moto: " + @motos_objeto[seleccion].nombre
            @motos_objeto[seleccion].usar
        end
        mostrarMenu()
    end
end

class Vehiculos
    def initialize(tipo, motor)
        
        @kilometraje = 0
        @buenEstado = true
        if tipo == "auto"
            @@cantRuedas = 4
        else
            @@cantRuedas = 2
        end
        @tipoMotor = @motor

    end
    attr_accessor :kilometraje
end

class Auto < Vehiculos
    def initialize(nombre, precio, autos, motor)
        
        @nombre = nombre
        @precio = precio
        @vtv = false
        super("auto", motor) 
        autos[@nombre] = @precio

    end

    def usar()
        
        puts "¿Qué quieres hacer?"
        
        puts "1- Ir a la ruta. 2- Realizar mantenimiento. 3- Pasear por la ciudad. 4- Realizar la VTV."
        eleccion = gets.chomp.to_i
        
        case eleccion
        when 1 then
            ruta()
        when 2 then
            mantenimiento()
        when 3 then
            transito()
        when 4 then
            vtv()
        end

    end
    attr_accessor :nombre

    private
    def ruta()

        km = rand(1..1000)
        @kilometraje = @kilometraje + km
        puts "Recorriste #{km} kilometros. ENTER para continuar"
        gets

    end

    def mantenimiento()
        
        azar = rand(1..3)
        case azar
        when 1 then
            puts "Revisaste las bujías de tu coche."
        when 2 then
            puts "Cargaste el tanque de gasolina."
        when 3 then
            puts "Limpiaste el carburador."
        end
        gets

    end

    def transito()
        
        km = rand(1..100)
        @kilometraje = @kilometraje + km
        puts "Recorriste #{km} kilometros por la ciudad.. ENTER para continuar"
        gets

    end

    def vtv()
        
        if @vtv == false
            puts "Realizaste la VTV."
            @vtv = true
            gets
        else
            puts "El coche ya tiene VTV."
            gets
        end

    end
end

class Moto < Vehiculos
    def initialize(nombre, precio, motos, cilindrada)
        @nombre = nombre
        @precio = precio
        super("moto", cilindrada)
        motos[@nombre] = @precio
    end

    def usar()
        puts "¿Qué quieres hacer?"
        
        puts "1- Ir a la ruta. 2- Realizar mantenimiento. 3- Pasear por la ciudad. 4- Hacer wheelie."
        eleccion = gets.chomp.to_i
        
        case eleccion
        when 1 then
            ruta()
        when 2 then
            mantenimiento()
        when 3 then
            transito()
        when 4 then
            wheelie()
        end
    
    end 
    attr_accessor :nombre

    private
    def ruta()-
        
        decision = rand(0..1)
        
        if decision == 0
            puts "No te animaste a ir por la ruta, había mucho viento. ENTER para continuar"
            gets
        else
            km = rand(1..1000)
            @kilometraje = @kilometraje + km
            puts "Recorriste #{km} kilometros. ENTER para continuar"
            gets
        end

    end

    def mantenimiento()
        
        azar = rand(1..3)
        
        case azar
        when 1 then
            puts "Puliste las ópticas de la moto."
        when 2 then
            puts "Limpiaste el carburador."
        when 3 then
            puts "Inflaste las cubiertas."
        end 
        gets

    end

    def transito()
        
        km = rand(1..100)
        @kilometraje = @kilometraje + km
        puts "Recorriste #{km} kilometros por la ciudad.. ENTER para continuar"
        gets

    end

    def wheelie()
        
        azar = rand(0..1)
        
        if azar == 0
            puts "Hiciste wheelie con la moto. Enter para continuar"
        else
            puts "Te caíste haciendo wheelie. Enter para continuar"
        end

    end
end

# variables
$dinero = 25000

# main
nombreFabrica = "" 
puts "Comenzarás con una suma de $#{$dinero} - ¿Cómo se llamará tu fábrica?"
nombreFabrica = gets.chomp
mi_fabrica = Fabrica.new(nombreFabrica)
puts "NOTA: El costo de fabricación de vehículos es del 30% de su precio de venta."
mi_fabrica.mostrarMenu()

