class Formatea
	def formatletra(txt)
		dig=15
		espacio=" "*dig
		txt=txt+espacio
		ntxt=""
	for i in 0..espacio.length-1#recorre los espacios y carga letra por letra
		ntxt=ntxt.to_s+txt[i]
	end
	return ntxt
   end
	def formatnum(txt)#recorre los espacios y carga de izquierda a derecha
		dig=4
		espacio=" "*dig
		txt=txt+espacio
		ntxt=""
	for i in 0..espacio.length-1#recorre los espacios y carga numero por numero
		ntxt=ntxt.to_s+txt[i]
	end
	return ntxt
   end
 	def ordencreciente(lista)
	lista.sort!
	return lista
end
	def separaparaordenar(a)
	vec=Array.new
	archivo=File.open("#{a}.dat").each{|linea|vec.push(linea)}
	return vec
	archivo.close
end
	def archivoordenado(vec,arch)
	newarch=File.new("#{arch}.dat","w")
	for i in 0..vec.length-1
		newarch.puts(vec[i])
	end
	newarch.close
end
end
class Datos<Formatea
	def separapersona()
		arch1=File.new("personas1.dat","r")
		documento=[]
    	nombre=[]
    	domicilio=[]
   		 i=0
	begin
		nom=""
		doc=""
	 	renglon = arch1.gets.chomp
	 	doc=renglon[0..8]
     	nom=renglon[8..23]
     	dom=renglon[58..70]
		documento[i]=doc.to_i
		nombre[i]=nom
		domicilio[i]=dom.to_s
		i=i+1
	end until (arch1.eof()==true)
    return documento,nombre,domicilio
	arch1.close
end
	def separavehiculo()
		arch1=File.new("vehiculos1.dat","r")
		patente=[]
    	marca=[]
    	documento=[]
   		 i=0
	begin
		pate=""
		marc=""
		doc=""
	 	renglon = arch1.gets.chomp
	 	doc=renglon[0..8]
     	marc=renglon[8..20]
     	pate=renglon[32..39]
		documento[i]=doc.to_i
		marca[i]=marc.to_s
		patente[i]=pate
		i=i+1
	end until (arch1.eof()==true)
	return documento,marca,patente
	arch1.close
    end
    def guarda(doc,nom,dom,docv,marcv,patev,a)
    archivo=File.new("#{a}.dat","w")
   	for i in 0..dom.length
		if dom[i].to_s==dom[0].to_s
	#ent,dec=separar(suel[i])
	#nument=formatear(ent)
	#decform=formateardec(dec)
		doc[i]=formatletra(doc[i].to_s)
		nom[i]=formatletra(nom[i].to_s)
		patev[i]=formatletra(patev[i].to_s)
		marcv[i]=formatletra(marcv[i].to_s)
		archivo.puts(doc[i].to_s+""+nom[i].to_s+"    "+patev[i].to_s+""+marcv[i].to_s)
		end
    end
    archivo.close
    end
    def mostrar(a)
	vec=Array.new
	archivo=File.open("#{a}.dat").each{|linea|vec.push(linea)}#para cada linea lo escriba en el vector
	#archivo1.each{|linea|vec.push(linea)}
	for i in 0..vec.length-1
		puts vec[i]
	end
	archivo.close
end
    def colabahia(nom,dom)
    	bahia=[]
    	for i in 0..nom.length
    		if dom[i].to_s=="BAHIA BLANCA"
    		 bahia.push (nom[i])
    		 end
    	end
    	return bahia
    end
    def colapunta(nom,dom)
    	punta=[]
    	for i in 0..nom.length
    		if dom[i].to_s=="PUNTA ALTA"
    		 punta.push(nom[i])
    		 end
    	end
    	return punta
   end
end
genera=Datos.new
com=genera.separaparaordenar("prod1")  
com=genera.ordencreciente(com)
genera.archivoordenado(com,"mejoras")
#vehiord=genera.separaparaordenar("vehiculos")
#vehiord=genera.ordencreciente(vehiord)
#genera.archivoordenado(vehiord,"vehiculos1")
#doc,nom,dom=genera.separapersona()
#docv,marcv,patev=genera.separavehiculo()
#puts"Ingrese el nombre del archivo a guardar"
#nomarch=gets.chomp.to_s
#genera.guarda(doc,nom,dom,docv,marcv,patev,nomarch)
#genera.mostrar(nomarch)
gets
#b=genera.colabahia(nom,dom)
#c=genera.colapunta(nom,dom)