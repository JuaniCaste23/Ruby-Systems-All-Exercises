def ingresar_palabra()
	print"ingrese una cadena de caracteres: "
	cadena=gets.chomp.to_s
    puts "La cadena ingresada es #{cadena}" 
	return cadena
end

def comparar(cadena)
    i=cadena.length
    if(i>=8)
		return true
	else
		puts "Debe ingresar una cadena de por lo menos de 8 caracteres."
		return false
	end
end

def azar(cadena)
	cad=cadena.length
	i=0
	aux=""
	begin 
	  carac=rand(65..90).chr #letras al azar
	  aux=aux + cadena[i]
	  aux=aux + carac
	  i=i+1
	end until(i==cad)
	puts "La cadena ingresada con letras al azar es: #{aux}"
end

#main
system('clear')
puts"Diseñe un programa que permita ingresar una cadena de no menos de 8 caracteres. Como salida
transforme la cadena original agregando letras del alfabeto al azar entre las letras originales de la cadena.
P/ej. REDOBLANTE => RAEBDCODBELFAGNHTIEJ\n\n"
begin
  palabra=ingresar_palabra
end until((comparar(palabra))==true)
azar(palabra)

print"\nFín del programa."
anticierre=gets.chomp