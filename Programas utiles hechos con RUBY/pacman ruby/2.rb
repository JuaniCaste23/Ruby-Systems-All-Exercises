

class Player
    def initialize(ventana_juego)
       @ventana_juego = ventana_juego
       @icon = Gosu::Image.new(@ventana_juego,"images/player1.png",true) 
    end

    def draw
      @icon.draw(50,50,1)  
    end
end