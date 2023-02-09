class Stock
   def initialize()
      @merc=Hash.new
      @tipo=tipo
      @@id=id
   end

   protected
   def id
     letras = "ID_"
     for i in 0..3
       letras = letras.to_s + (rand(65..90).chr).to_s
     end
     @@id = letras.to_s + (rand(0..9999)).to_s
     return @@id
   end

   private
   def frutas_verduras #puede ser valido para cualquier mercaderia(carne,verduras,insumos,articulos,etc)
      @merc["banana"]=50.00
      @merc["manzana"]=45.00
      @merc["naranja"]=35.00
      @merc["pera"]=40.00
      @merc["mandarina"]=40.00
      @merc["uva"]=55.00
      @merc["kiwi"]=85.00
      @merc["durazno"]=60.00
      @merc["sandia"]=58.00 
      @merc["melone"]=50.00
      @merc["frutilla"]=100.00
      @merc["limon"]=68.00
      @erc["papa"]=50.00
      @merc["batata"]=60.00
      @merc["zanahoria"]=40.00
      @merc["tomate"]=70.00
      @merc["cebolla"]=60.00
      @merc["cebolla colorada"]=80.00
      @merc["zapallo"]=80.00
      @merc["zapallito"]=65.00
      @merc["acelga"]=90.00
      @merc["espinaca"]=100.00
      @merc["lechuga"]=120.00
      @merc["repollo blanco"]=50.00
      @merc["repollo violeta"]=70.00
      @merc["morron rojo"]=150.00
      @merc["morron violeta"]=95.00
      @merc["ajo"]=40.00
      #merc[""]= agregar 
      puts"¡¡Bienvenido al sector de Frutas y Verduras!! Stock disponible:"
      return @merc
  end

  def carniceria
   
  end

  def mariscos
  end

  def productos_de_lacteos
  end
  
  def productos_de_limpieza
  end

  def bebidas
  end
end

class Comercio
   def initialize
      super 
      @venta=Hash.new
   end

 def realizar_venta
    begin
       puts "------------------------------------------------"
       puts"Stock Disponible:"
       @merc.each do |clave,valor|
         puts"-#{clave} = $#{valor} el kg"
       end
       puts "------------------------------------------------"
       print"¿Que fruta desea llevar?: "
       mm=gets.chomp
       if (@merc.has_key?(mm)) #has_key sirve para declarar true o false.
          print"¿Que cantidad lleva(en kg)?: "
          cant=gets.chomp.to_f
          if (@venta.has_key?(mm))
             @venta[mm]=@venta[mm]+cant
          else
             @venta[mm]=cant
          end 
       else
          puts"No existe tal mercaderia en el stock."
       end         
       print"¿Desea llevar otra fruta?(si/no): "
       resp=gets.chomp 
       system('cls')
    end until((resp=="no") or (resp=="No") or (resp=="n") or (resp=="N"))
    return @venta 
 end
 
 def calcular
    total=0
    puts"Lo que lleva de mercaderia es:"
    puts"------------------------------------------------"
    venta.each do|fruta,cantidad| #fruta=clave ; cantidad=valor
       puts"#{cantidad} kg de #{fruta}: $#{(cantidad * @merc[fruta]).round(2)}" 
       total = total + (cantidad * @merc[fruta])
    end
    puts"------------------------------------------------"
    puts"-El total de la compra es: $#{total.round(2)}" #round me marca () decimales que quiero.
 end
end
 
#main
system('cls')#borra todos los datos de la consola.
mercado=mercaderia
vender=realizar_venta(mercado)
calcular(mercado,vender)
print"\nGracias por comprar en la Fruteria Juancho, ¡Hasta la proxima!"
 
anticierre=gets.chomp
system('cls') #borra todos los datos del prog restantes de la consola