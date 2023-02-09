require 'rubygems'
require 'gosu'

class Ventana < Gosu::Window
  def initialize
    super(300,400,false)
  end

  def draw
  end

  def update
  end
end

#main  libreria = gema (rubygames,gosu)
vent = Ventana.new 
vent.show

anticierre=gets.chomp