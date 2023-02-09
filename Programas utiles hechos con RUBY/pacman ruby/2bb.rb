

class Player
    def initialize(ventana_juego)
       @ventana_juego = ventana_juego
       @icon = Gosu::Image.new(@ventana_juego,"images/player1.png",true) 
       @x = 50
       @y = 50
    end

    def draw
      @icon.draw(@x,@y,1)  
    end
    def move_left
       if @x < 0
          @x = 0
       else
          @x = @x - 10
       end

    end
    def move_right
       if @x > (@ventana_juego.width - @icon.width)
         @x = @ventana_juego.width - @icon.width
       else
         @x = @x + 10
       end
    end
    def move_up
       if @y < 0
          @y = 0
       else
          @y = @y - 10
       end
    end
    def move_down
      if @y > (@ventana_juego.height-@icon.height)
         @y = @ventana_juego.height-@icon.height
           
      else
         @y = @y + 10
      end
    end
end