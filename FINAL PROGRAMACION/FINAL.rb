class Cola
   def initialize()
      @cola=Array.new
   end	
    
   def agregar(elem)
      @cola.push(elem)
   end
    
   def servicio
      @cola.shift
   end
    
   def mostrar
      for i in 0..@cola.length-1
         puts @cola[i]
      end
   end
    
   def cola_vacia?
      if(@cola.length==0)
        puts"La cola está vacia." 
      else
        puts"La cola aun tiene personal --> #{@cola}"
      end
   end
    
   def existe?
      if (@cola.include?())#elem
         return true
      else  
         return false
      end
   end
end

class Examen
   def initialize(ruta1,ruta2)
      @ruta1=ruta1
      @ruta2=ruta2
      @nombres=Array.new ; @dni=Array.new ; @dni2=Array.new ; @ciudad=Array.new ; @modelo=Array.new ; @patente=Array.new 
      @arreglo_ordenado=Array.new
      @cola_bahia=Cola.new
      @cola_punta=Cola.new
   end

   def guardar_datos_personas
      arch=File.new(@ruta1,"r") ; nom="" ; doc="" ; city="" 
      begin
         renglon=arch.gets.chomp
         doc=renglon[0..7].to_i
         nom=renglon[8..23]
         city=renglon[58..70]
         @nombres.push(nom)
         @dni.push(doc) 
         @ciudad.push(city) 
      end until(arch.eof()==true)
      arch.close
      #puts "#{@nombres}\n#{@dni}\n#{@ciudad}"
      return @nombres,@dni,@ciudad
   end

   def guardar_datos_vehiculos
      arch=File.new(@ruta2,"r") ; doc="" ; mod="" ; pat="" 
      begin
         renglon=arch.gets.chomp
         doc=renglon[0..7].to_i
     	   mod=renglon[8..20]
         pat=renglon[32..39]
         @dni2.push(doc)
         @modelo.push(mod)
         @patente.push(pat)
      end until(arch.eof()==true)
      arch.close
      #puts "#{@dni2}\n#{@modelo}\n#{@patente}"
      return @dni2,@modelo,@patente
   end

   def ordenar_datos
      cont=0 ; j=0 
      begin
         for i in 0..@dni2.length-1
           if(@dni[i]==@dni2[j])
               renglon="#{@dni[i]}\t#{@nombres[i]}\t#{@patente[j]}\t#{@modelo[j]}"
               @arreglo_ordenado.push(renglon)
               @dni2[j]=nil
               @dni2.compact #voy compactando el dni2 hasta que quede en 0
           end
         end
         j=j+1
         cont=cont+1
      end until(cont==9)
      #puts @arreglo_ordenado
      return @arreglo_ordenado
   end

   def crear_archivo
      arch=File.new("/home/juani/Escritorio/FINAL PROGRAMACION/SALIDA.DAT","w")
      orden=@dni.sort ; j=0 ; cont=0
      begin 
         for i in 0..orden.length-1
           if(@arreglo_ordenado[i].to_i==orden[j].to_i)
             arch.puts(@arreglo_ordenado[i])
           end
         end
         j=j+1
         cont=cont+1
      end until(cont==9)
      arch.close
   end

   def leer_archivo
      arch=File.new("/home/juani/Escritorio/FINAL PROGRAMACION/SALIDA.DAT","r")
      puts"\n-------------------------------------------------------"
      arch.each do |linea|
         puts linea
      end
      arch.close
      puts"-------------------------------------------------------\n"
   end
   
   def asignar_colas
      for i in 0..@ciudad.length-1
         if(@ciudad[i]=="BAHIA BLANCA")
            @cola_bahia.agregar(@nombres[i])
         else
            @cola_punta.agregar(@nombres[i])
         end
      end
      return @cola_bahia,@cola_punta
   end

   def mostrar_colas
      puts"\n----BAHIA BLANCA----"
      @cola_bahia.mostrar
      puts"\n----PUNTA ALTA----"
      @cola_punta.mostrar
   end
end

def ejecutar(final)
   print"a) Pulse <ENTER> para guardar el registro de las Personas con sus Vehiculos de forma ordenada." 
   gets
   final.guardar_datos_personas
   final.guardar_datos_vehiculos
   final.ordenar_datos
   final.crear_archivo
   final.leer_archivo
   print"\nb) Pulse <ENTER> para ver que personas corresponden a Bahia Blanca y a Punta Alta."
   gets
   final.asignar_colas
   final.mostrar_colas
end

#main
system('clear')
ruta1="/home/juani/Escritorio/FINAL PROGRAMACION/PERSONAS.DAT"
ruta2="/home/juani/Escritorio/FINAL PROGRAMACION/VEHICULOS.DAT"
final=Examen.new(ruta1,ruta2)
ejecutar(final)
print"\nFin del Programa."
anticierre=gets.chomp