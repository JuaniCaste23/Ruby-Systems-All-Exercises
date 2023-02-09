class Cola
  def initialize
	@q = Array.new		
  end
  def encolar(dato)
     @q.push(dato)
  end 
  def servicio
	@q.shift			
  end
  def cola_vacia?
    if (@q.length == 0)
       return true
    else
       return false
    end
  end		
end

mic=Cola.new
arch=File.new("c:/arch/datos.dat","r")
begin
    renglon=arch.gets.chomp   
    mic.encolar(renglon)	
end until (arch.eof()==true)
arch.close

while (mic.cola_vacia?()==false)
    a=mic.servicio
    puts a
end		
puts mic.cola_vacia?()