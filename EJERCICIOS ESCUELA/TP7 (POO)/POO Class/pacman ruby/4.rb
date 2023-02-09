require 'rubygems'
require 'gosu'
load '2b.rb' #carga datos de otro archivo

class Ventana < Gosu::Window
  def initialize
    super(300,400,false)
    @player=Player.new(self)
    self.caption = "Mi primera ventana!"
    @imagen_fondo = Gosu::Image.new(self,"images/starry_night.png", true)
  end

  def draw
     @imagen_fondo.draw(0,0,1)
     @player.draw
  end

  def update
     if button_down? Gosu::Button::KbLeft
        @player.move_left
     end
     if button_down? Gosu::Button::KbRight
        @player.move_right
     end
     if button_down? Gosu::Button::KbUp
        @player.move_up
     end
     if button_down? Gosu::Button::KbDown
        @player.move_down
     end
  end
end

vent = Ventana.new
vent.show