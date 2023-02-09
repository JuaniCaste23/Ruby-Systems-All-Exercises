class Formatea
def formatxt(txt,dig)
		espacio=" "*dig
		txt=txt+espacio
		ntxt=""
	for i in 0..espacio.length-1#recorre los espacios y carga letra por letra
		ntxt=ntxt.to_s+txt[i]
	end
	return ntxt
end
end
class Archivo<Formatea
	def initialize(arch,forma)
		@a=File.new(arch,forma)
	end
	def cerrar
		@a.close
	end
	def separadatos
		enc =false
		nom=""
		cant =0
		origen=""
		sign=""
		fila=@a.gets.chomp	
		i=0
		begin
			begin 
				nom= nom+fila[i].to_s
				i +=1
			end until (fila[i] == "*")
			if (fila[i] == "*")
				i +=8
			end
			begin 
				origen= origen+fila[i].to_s
				i +=1
			end until (fila[i] == ";")
			if fila[i] == ";"
				enc = true
			end
			if (fila[i] == ";")
				i +=18
			end
			begin 
				sign= sign+fila[i].to_s
				i +=1
			end until (i > fila.length)			
		end until (enc == true)
		return nom,origen,sign
	end
	def incorporar(dato)#incorpora los archivos en mejoras ya formateado
		@a.puts(dato)
	end
	
	def terminar#cierra el archivo
		@a.eof()
	end
 def mostrar()
	vec=Array.new
	archivo=File.open("MEJORAS.txt").each{|linea|vec.push(linea)}#para cada linea lo escriba en el vector
	for i in 0..vec.length-1
		puts vec[i]
	end
	archivo.close
end
end
class Diccio
def diccionario()#lo carga en un hash todo de mejoras
	archivo=File.new("MEJORAS.txt","r")
	h=Hash.new
	begin
		fila=archivo.gets
		palabra = ""
		significado=""
		i=0
		begin	
			palabra= palabra+fila[i]
			i+=1
		end until (fila[i] == " ")
		i =30
		begin	
			significado= significado+fila[i]
			i+=1
		end until (i > fila.size-1)
		h[palabra] = significado
	end until(archivo.eof() == true)
	return h
end
def ingreso()#pide la palabra
	puts "\nIngrese palabra a buscar: \n"
	print"Ingrese: "
	palabra=gets.chomp
	return palabra.upcase#la palabra ingresada la convierte en mayuscula para buscar en el hash
end
def busqueda(h,pal)
	if h.has_key?(pal)#busca en el hash si esta el significado
		puts pal + " : " +h[pal]
	else
		puts "Esa palabra no existe"
	end
end
end
nombres= Archivo.new("NOMBRES.txt","r")	#Este manda el nombre del nombre del archivo y se es para leer
mejoras= Archivo.new("MEJORAS.txt","w")	#Este manda el nombre del nombre del archivo en donde se va a guardar
genera=Diccio.new	#class diccionario
begin
	nom,origen,sign = nombres.separadatos	#este manda a la def separadatos y devueve el nom origen y significado
	print nom+"- "	#muestra los nombres a buscar en el diccionario
	mejoras.incorporar(mejoras.formatxt(nom,15)+mejoras.formatxt(origen,15)+mejoras.formatxt(sign+".",100))	#este carga los archivos formateado en mejoras en la def incorporar llamando a la class mejoras que tiene como herencia a Formatear
end until(nombres.terminar == true)	#hasta que termine de recorrer el archivo hace este begin y va incorporando en el archivo mejoras

nombres.cerrar	#cierra el archivo nombres

mejoras.cerrar	#cierra el archivo mejoras ya cargado

#mejoras.mostrar()#este muestra todo lo ordenado si quieren lo pueden abrir pero son muchas cosas para mostrar

h=genera.diccionario()	#lo que esta en mejoras lo guarda en un hash
puts "\n"
pal=genera.ingreso()	#pide para buscar en el hash
genera.busqueda(h,pal)	#lo busca en el hash y lo muestra
gets.chomp