def ingresar_coeficientea()
	print "Ingrese el numero del coeficiente A: "
	coefa=gets.chomp.to_i
	puts "El coeficiente ingresado A es: #{coefa}"
	return coefa
end

def ingresar_coeficienteb()
	print "Ingrese el numero del coeficiente B: "
	coefb=gets.chomp.to_i
	puts "El coeficiente ingresado B es: #{coefb}"
	return coefb
end

def ingresar_coeficientec()
	print "Ingrese el numero del coeficiente C: "
	coefc=gets.chomp.to_i
	puts "El coeficiente ingresado C es: #{coefc}"
	return coefc
end

def grado(a,b,c)
	if (a != 0)
	  puts"La ecuacion es de segundo grado: #{a}x^2+#{b}x+#{c}"
	else
	    if((a==0) and (b!=0))
	        puts"La ecuacion es de primer grado: #{b}x+#{c}"
		else
		    if ((a==0) and (b==0))
			 puts"La ecuacion es un termino independiente: #{c}"
	       end
	    end
    end
end

#main
system('clear') 
puts"Diseñe un algoritmo modular (PROGRAMA) que calcule el grado de una ecuación cuadrática (ax 2 +bx+c).
Considere que los coeficientes a, b y c son ingresados en el programa principal. Indique cómo se pasan los
parámetros al subprograma.\n\n"
coefi_a=ingresar_coeficientea
coefi_b=ingresar_coeficienteb
coefi_c=ingresar_coeficientec
grado(coefi_a,coefi_b,coefi_c)

print"\nFín del programa."
anticierre=gets.chomp