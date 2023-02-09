def mercaderia #puede ser valido para cualquier mercaderia(carne,verduras,insumos,articulos,etc)
   merc=Hash.new
   merc["bananas"]=50.00
   merc["manzanas"]=45.00
   merc["naranjas"]=35.00
   merc["peras"]=40.00
   merc["mandarinas"]=40.00
   merc["uvas"]=55.00
   merc["kiwis"]=85.00
   merc["duraznos"]=60.00
   merc["sandias"]=58.00
   merc["melones"]=50.00
   merc["frutillas"]=100.00
   puts"¡¡Bienvenido a la Fruteria Juancho!!"
   return merc
end

def realizar_venta(merc)
   venta=Hash.new
   begin
      puts "------------------------------------------------"
      puts"Stock Disponible:"
      merc.each do |clave,valor|
        puts"-#{clave} = $#{valor} el kg"
      end
      puts "------------------------------------------------"
      print"¿Que fruta desea llevar?: "
      mm=gets.chomp
      if (merc.has_key?(mm)) #has_key sirve para declarar true o false.
         print"¿Que cantidad lleva(en kg)?: "
         cant=gets.chomp.to_f
         if (venta.has_key?(mm))
            venta[mm]=venta[mm]+cant
         else
            venta[mm]=cant
         end 
      else
         puts"No existe tal mercaderia en el stock."
      end         
      print"¿Desea llevar otra fruta?(si/no): "
      resp=gets.chomp 
      system('cls')
   end until((resp=="no") or (resp=="No") or (resp=="n") or (resp=="N"))
   return venta 
end

def calcular(merc,venta)
   total=0
   puts"Lo que lleva de mercaderia es:"
   puts"------------------------------------------------"
   venta.each do|fruta,cantidad| #fruta=clave ; cantidad=valor
      puts"#{cantidad} kg de #{fruta}: $#{(cantidad * merc[fruta]).round(2)}" 
      total = total + (cantidad * merc[fruta])
   end
   puts"------------------------------------------------"
   puts"-El total de la compra es: $#{total.round(2)}" #round me marca () decimales que quiero.
end

#main
system('cls')#borra todos los datos de la consola.
mercado=mercaderia
vender=realizar_venta(mercado)
calcular(mercado,vender)
print"\nGracias por comprar en la Fruteria Juancho, ¡Hasta la proxima!"

anticierre=gets.chomp
system('cls') #borra todos los datos del prog restantes de la consola