class Album
	
	def initialize()
		@alb=Array.new(69)
		for i in 0..@alb.length()
			ran=rand(2)
			@alb[i]=ran
			print " [#{@alb[i]}] "
		end
	end
	
	def cant_figuritas()
		cont=0
		for i in 0..@alb.length()
			if (@alb[i]==1)
				cont=cont+1
			end
		end
		return cont
	end
	
	def obtener_figurita(i)
		return @alb[i]
	end
	
	def long_album()
		return @alb.length()-1
	end
	
end

class Coleccionistas
	
	def initialize()
		@col=Array.new(17)
		for i in 0..@col.length()-1 
			puts "Ninio #{i+1}: "
			@col[i]=Album.new()
			puts ""
			puts "Cant de figuritas: #{@col[i].cant_figuritas()} "
			puts ""
		end
	end
	
	def long_col()
		return @col.length()
	end
	
	def mayor_cant_figuritas()
		mayor=0
		pos=nil
		for i in 0..@col.length()-1
			if (@col[i].cant_figuritas()>mayor)
				mayor=@col[i].cant_figuritas()
				pos=i
			end
		end
		puts " El ninio con mayor cant de figuritas es el numero #{pos} con #{mayor} figuritas " 
	end
	
	def obtener_dificiles()
		dif=Array.new(69)
		for t in 0..dif.length()
			dif[t]=0
		end
	
		for i in 0..@col.length-1   
			for j in 0..@col[i].long_album()
				if (@col[i].obtener_figurita(j)==0)					
					dif[j]=dif[j]+1                 #### ACA ME DA QUE ES NIL CLASS Y NO SE POR QUE 
				end
			end
		end
		mayor=0
		for i in 0..dif.length()-1
			if (dif[i]>mayor)
				mayor=dif[i]
			end
		end
		for i in 0..dif.length()-1
			if (mayor==dif[i])
				puts "La figurita numero #{i+1} es una de las mas dificiles "
			end
		end		
	end
end

#MAIN

coleccion=Coleccionistas.new()
coleccion.obtener_dificiles()
coleccion.mayor_cant_figuritas()
r=gets.chomp