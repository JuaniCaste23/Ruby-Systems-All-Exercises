#mejorar parte de rendimiento, poner mas juegos.
def ingrese_datos()
  enc=false
  print"-Ingrese su nombre de usuario: "
  nombre=gets.chomp
  print"-Ingrese su edad: "
  edad=gets.chomp.to_i
  print"-Ingrese su pais: "
  pais=gets.chomp
  begin
    print"\n-Ingrese el genero que quisiera llevar de la Biblioteca:\n\n--> Estrategia\n--> Sandbox\n--> Shooter\n--> MMO \n\n ¿Cual desea? = "
    genero=gets.chomp
    if((genero=="Estrategia") or (genero=="Sandbox") or (genero=="Shooter") or (genero=="MMO"))
      enc=true
    else
      puts"Debe ingresar un genero que sea --> Estrategia, Sandbox, Shooter o MMO"
    end
  end until(enc==true)
  print"\n-Ingrese un número que quisiera de juegos: "
  num=gets.chomp.to_i
  system('cls')
  return nombre,edad,pais,genero,num
end

class Jugador #poner una clase relacionada..
  def initialize(nombre,edad,pais)
    @nombre=nombre
    @edad=edad
    @pais=pais
    @@id=id
  end

  def registro
    puts"Registro del usuario:"
    print"\n-Nombre: #{@nombre}\n-Edad: #{@edad}\n-Pais: #{@pais}\n---Tendra ---> (#{@num}) juego/s del genero: #{@genero}."
    print"\n-----------------------------------------\n"
  end

  private
  def id
    letras = "ID_"
    for i in 0..3
      letras = letras.to_s + (rand(65..90).chr).to_s
    end
    @@id = letras.to_s + (rand(0..9999)).to_s
  end

end

class Biblioteca < Jugador
  def initialize(nombre,edad,pais,genero,num)
    super(nombre,edad,pais)
    @genero=genero
    @num=num
    @est=Estrategia.new(num)
    @mmo=MMO.new(num)
    @shot=Shooter.new(num)
    @sand=Sandbox.new(num)
  end
  attr_writer :edad , :pais , :nombre

  def entregar
    case 
    when (@genero=="Estrategia")
      puts @est.juegos
    when (@genero=="MMO")
      puts @mmo.juegos
    when (@genero=="Shooter")
      puts @shot.juegos
    when (@genero=="Sandbox") 
      puts @sand.juegos
    end
    puts"--> El ID de la compra es: #{@@id} <--"
  end
end

class Shooter 
  def initialize(num)
    @num = num
  end
 def juegos
  if(@num>=1)
    puts"CSGO"
    puts"-Desarrolladora: Valve\n-Pegi: 18\n Sinopsis: Juego orientado a la pelea entre polis y terros."
    puts"-----------------------------------------"
    $suma = $suma + 200
  end
  if(@num>1)
    puts"Halo"
    puts"-Desarrolladora: Bungie\n-Pegi: 16\n Sinopsis: Juego orientado al combate especial."
    $suma = $suma + 500
  end
  if(@num==0)
    puts"No ha querido adquirir ningun juego"
  end
 end

 def requisitos #mejorar, falto esta parte, poner mas juegos
   puts"-Procesador de ultima generacion, 8 GB RAM"
 end
end

class Sandbox 
  def initialize(num)
    @num = num
  end

  def juegos
    if(@num>=1)
      puts"GTA"
      puts"-Desarrolladora: Rockstar\n-Pegi: 18\n Sinopsis: Juego orientado a la vida real."
      puts"-----------------------------------------"
    end
    if(@num>1)
      puts"Assassin's Creed"
      puts"-Desarrolladora: Ubisoft 18\n Sinopsis: Juego orientado a un credo de asesinos"
    end
    if(@num==0)
      puts"No ha querido adquirir ningun juego"
    end
  end
  def requisitos #mejorar, falto esta parte
    puts"-Procesador de ultima generacion, 8 GB RAM"
  end
end

class Estrategia 
  def initialize(num)
    @num = num
  end

  def juegos
    if(@num>=1)
      puts"Rome Total War"
      puts"-Desarrolladora: Creativy\n-Pegi: 15\n Sinopsis: Juego orientado a estrategia romana."
      puts"-----------------------------------------"
    end
    if(@num>1)
      puts"Age of Empires"
      puts"-Desarrolladora: Microsoft\n-Pegi: 12\n Sinopsis: Juego orientado a la estrategia medieval."
    end
    if(@num==0)
      puts"No ha querido adquirir ningun juego"
    end
 end
  def requisitos #mejorar, falto esta parte
    puts"-Procesador de ultima generacion, 8 GB RAM"
  end
end

class MMO 
  def initialize(num)
    @num = num
  end

 def juegos
   if(@num>=1)
      puts"LoL"
      puts"-Desarrolladora: Koch\n-Pegi: 10\n Sinopsis: Juego orientado al online masivo."
      puts"-----------------------------------------"
   end
   if(@num>1)
      puts"Fortnite"
      puts"-Desarrolladora: Epic Games\n-Pegi: 7u\n Sinopsis: Juego orientado al Battle Grounds"
   end
   if(@num==0)
      puts"No ha querido adquirir ningun juego"
   end
 end
 def requisitos #mejorar, falto esta parte
  puts"-Procesador de ultima generacion, 8 GB RAM"
 end
end
 
def control()
  print"\nQuiere seguir adquiriendo bibliotecas?\nPulse(s/n): "
  control=gets.chomp
  if(control=="Si") or (control=="s") or (control=="S") or (control=="SI")
    system('cls')
    puts"Continua adquiriendo bibliotecas. \n\n"
    return true
  else
    system('cls')
    return false
  end
end

#main
system('cls')
puts"-------------------------Biblioteca de Videojuegos JUSEFRA-------------------------\n\n"
cont=0 ; i=1 ; listado=Hash.new ; $suma=0
begin
  nombre,edad,pais,genero,num=ingrese_datos
  entrega = Biblioteca.new(nombre,edad,pais,genero,num)
  entrega.registro
  #entrega.nombre "Ignacio" #accessores para cambiar algun parametro a la fuerza
  #entrega.edad="20"
  #entrega.pais="Argentino"
  cont = cont + num
  entrega.entregar
  listado[i]=entrega
  i=i+1
  salida=control
end until(salida==false)

print"Desea ver las bibliotecas adquiridas nuevamente? (s/n): "
si_no=gets.chomp
system('cls')
if((si_no=="s") or (si_no=="Si") or (si_no=="si"))
  listado.each do |clave,valor|
    puts"Biblioteca adqurida -->#{clave}<--\n"
    puts"----------------------------------------------------------------------------------------------------------------"
    valor.registro
    valor.entregar
    puts"----------------------------------------------------------------------------------------------------------------\n\n"
  end
  puts "--> Juegos adquiridos en total: #{cont}"
  puts"--> Precio a pagar en total: #{$suma}"
  puts"\n¡¡¡Hasta pronto!!!"
else
  puts "\n--> Juegos adquiridos en total: #{cont}\n"
  puts "--> Precio a pagar en total: #{$suma}" #arreglar esta parte.
  puts"\n¡¡¡Hasta pronto!!!"
end

anticierre=gets.chomp
#Estrella de la Muerte, hacer concepto de disparo.