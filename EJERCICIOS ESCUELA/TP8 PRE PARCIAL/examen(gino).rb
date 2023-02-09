=begin
Usted recibió un archivo de texto llamado numeros.dat. El mismo contiene las diferentes apuestas de
apostadores del tradicional juego del Quini 6.
El sorteo oficial dictaminó que las bolillas ganadoras correspondan a los números 9,14,17,28,33 y 41.
Deberá determinar la cantidad de apostadores que acertaron los seis números y acceden al premio.
14,9,17,33,41,28
=end

class Archivo
    def initialize(ruta)
        @ruta = ruta
        print "¿Cuantos aciertos mostrar? "
        @aciertos = gets.chomp
        if File.exist?(@ruta)
            leer()
        else
            puts "No existe el archivo"
        end 
    end 

    private

    def leer()
        lineaActual = 1
        arch = File.open(@ruta, 'r')
        arch.each do |linea| 
            comprobarGanador(lineaActual, linea)
            lineaActual = lineaActual + 1
        end 
        arch.close
    end 

    def comprobarGanador(participante, linea)
        aciertos = 0
        intentos = 0 
        aux = ""
        for i in 0..linea.length-1
            if linea[i] != ','
                aux = aux + linea[i]
            else 
                if comprobarAcierto(aux)
                    aciertos = aciertos + 1 
                end 
                intentos = intentos + 1
                aux = ""
            end
            if intentos == 5 and comprobarAcierto(aux) # ultimo numero
                aciertos = aciertos + 1
            end
        end
        if aciertos >= @aciertos.to_i
            puts "El participante nº #{participante} obtuvo #{aciertos} aciertos!"
        end
    end 

    def comprobarAcierto(num)
        if num == "9" or num == "14" or num == "17" or num == "28" or num == "33" or num == "41"
            return true
        else
            return false
        end
    end
end

archivo = Archivo.new("numeros.dat")