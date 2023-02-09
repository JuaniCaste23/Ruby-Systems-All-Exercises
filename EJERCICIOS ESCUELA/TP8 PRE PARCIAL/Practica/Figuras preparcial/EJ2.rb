class Archivo
	def initialize (d,a)
		@arch=File.new("diccionario.txt","r")
	end
	
	def get_renglon()
		return @arch.gets
	end
	
	def insertar_renglon(cad)
		@arch.puts(cad)
	end
	
	def cerrar_archivo()
		@arch.close()
	end
end

class Diccionario < Archivo
	def initialize ()
		@arch=File.new("diccionario.txt","r")
	end
	
#	def obtener_palabra()
#		cad=""
#		reng=@arch.gets
#		i=0
#		begin
#			cad=cad+reng[i]
#			i=i+1
#		end until reng[i]==" "
#		return cad
#	end

	def obtener_resultado(palabra)
		@archi=File.new("diccionario.txt","r")
		encontro=false
		while ((not @archi.eof()) or (not encontro))
			cad=""
			reng=@archi.gets
			i=0
			begin
				cad=cad+reng[i].to_s
				i=i+1
			end until (reng[i]==" ")
			if (cad==palabra)
				puts reng[i..reng.length-1]
				encontro=true
			end
		end
		@archi.close()
	end
end

#MAIN

dicc=Diccionario.new()
begin 	
	puts "Ingrese palabra para buscar su traduccion: (PRESIONE ENTER HASTA FINALIZAR) "
	palabra=gets.chomp
	if palabra!=gets.chomp
		dicc.obtener_resultado(palabra)
	end
end until (palabra==gets.chomp)