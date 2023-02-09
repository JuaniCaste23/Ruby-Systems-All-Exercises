class Personas
	def initialize()
		@pers=File.new("PERSONAS.dat","r")		
	end
	
	def reiniciar()
		@pers=File.new("PERSONAS.dat","r")
	end
	
	def cerrar()
		@pers.close()
	end
	
	def fin_archivo()
		return @pers.eof()
	end
	
	def get_long()
		return @pers.length()
	end
	
	def get_renglon()
		return @pers.gets
	end
	
	def get_dni(n)
		return n[0..7]
	end	
	
	def get_prof(n)
		cad=n[32]
		i=33
		encontro=true
		while (encontro)
			if (n[i]!=" ")
				cad=cad+n[i]
				i=i+1
			else
				encontro=false
			end
		end
		return cad
	end 
	
	def get_sexo(n)
		return n[48]
	end
	
end

class Cobranza
	def initialize()
		@cobra=File.new("COBRANZA.dat","r")		
	end
	
	def fin_archivo()
		return @cobra.eof()
	end
	
	def reiniciar()
		@cobra=File.new("COBRANZA.dat","r")
	end
	
	def cerrar()
		@cobra.close()
	end
	
	def get_long()
		return @cobra.length()
	end
	
	def get_renglon()
		return @cobra.gets
	end
	
	def get_dni(n)
		return n[10..17].to_s
	end
	
	def get_importe(n)
		str=""
		for i in 18..23
			str=str+s[i]
		end
		return str.to_f
	end
	
	def get_sueldo(n)
		sueldo=0
		@cobra=File.new("COBRANZA.dat","r")
		while (not @cobra.eof())
			aux=0
			cad=@cobra.gets
			if (n==cad[10..17])
				str=""
				for i in 18..23
					str=str+cad[i]
				end
				aux=str.to_i
				sueldo=sueldo+aux		
			end
		end
		return sueldo
	end
	
	def get_movi(n)
		movi=0
		@cobra=File.new("COBRANZA.dat","r")
		
		while (not @cobra.eof())
			cad=@cobra.gets
			if (n==cad[10..17])
				movi=movi+1				
			end
		end
		return movi
	end
end

class Sistema
	def initialize()
		@per=Personas.new()
		@cob=Cobranza.new()
	end
	
	def existe_persona(n)
		@per.reiniciar()
		encontro=false
		while (not @per.fin_archivo() )
			if (@per.get_dni(@per.get_renglon()) == n)
				encontro=true
			end
		end
		@per.cerrar()
		return encontro
	end
	
	def get_sueldo_persona(n)
		if (existe_persona(n))
			cobro=@cob.get_sueldo(n)
		end
		return cobro
	end

	def get_mejor_paga()
		@per.reiniciar()
		@cob.reiniciar()
		dni=0
		mayor=0
		for i in 0..26
			dniaux=@per.get_dni(@per.get_renglon())
			sueldo=@cob.get_sueldo(dniaux)
			
			if (mayor<sueldo)
				mayor=sueldo
				dni=dniaux
			end
		end
		puts " La persona que mas cobra es la de DNI #{dni} con un sueldo de: $#{mayor}"
	end
	
	def get_mayor_movi()
		@per.reiniciar()
		@cob.reiniciar()
		dni=0
		mayor=0
		for i in 0..26
			dniaux=@per.get_dni(@per.get_renglon())
			movimientos=@cob.get_movi(dniaux)
			
			if (mayor<movimientos)
				mayor=movimientos
				dni=dniaux
			end
		end
		puts " La persona que mas movimientos realizo es la de DNI #{dni} con #{mayor} movimientos"
	end
	
	def cobro_policia()
		@per.reiniciar()
		@cob.reiniciar()
		cobro_poli=0
		for i in 0..26
			reng=@per.get_renglon()
			prof=@per.get_prof(reng)
			dni=@per.get_dni(reng)
			if (prof=="POLICIA")
				cobro_poli=cobro_poli+@cob.get_sueldo(dni)
			end
		end
		return cobro_poli
	end
	
	def cobro_mujeres()
		@per.reiniciar()
		@cob.reiniciar()
		cobro_f=0
		for i in 0..26
			reng=@per.get_renglon()
			sexo=@per.get_sexo(reng)
			dni=@per.get_dni(reng)
			if (sexo=="F")
				cobro_f=cobro_f+@cob.get_sueldo(dni)
			end
		end
		return cobro_f
	end
end

#MAIN
sist=Sistema.new()
begin 
	puts " INGRESE DNI DE PERSONA A CALCULAR EL SUELDO: (PARA DEJAR DE BUSCAR INGRESE 0) "
	n=gets.chomp 
	paga=sist.get_sueldo_persona(n)
	puts " Esta persona cobrara : $#{paga}"
end until (n=="0")
sist.get_mejor_paga()
sist.get_mayor_movi()
puts " Los policias cobran : $#{sist.cobro_policia()} "
puts " Las mujeres cobran : $#{sist.cobro_mujeres()} "
a=gets.chomp	