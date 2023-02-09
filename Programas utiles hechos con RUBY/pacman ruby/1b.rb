require 'rubygems' #rubygames y gosu son dos gemas de ruby.
require 'gosu'
load '2.rb' #carga otro archivo

class Ventana < Gosu::window #nombre de la clase ::
    def def initialize
      super(300,400,false)
      self.caption = "Mi primera ventana!"
      @imagen_fondo = Gosu::Image.new(self,"images/starry_night.pgn", true)
      #el caption es un accesor que pasa datos.
      @player=player.new(self) #estoy creando una nueva instancia de player dentro de la ventana actual.
    end

    def draw
        @imagen_fondo.draw(0,0,1) #dibujo fondo de la pantalla
        @player.draw              #dibujo pacman
    end
    def update
    end
end

#main  libreria = gema (rubygames,gosu)
vent=Ventana.new
vent.show

anticierre=gets.chomp   