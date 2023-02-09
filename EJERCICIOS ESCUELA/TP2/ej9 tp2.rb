def ingresar_palabra()
	print"ingrese una cadena de caracteres: "
	cadena=gets.chomp.to_s
  puts "La cadena ingresada es: #{cadena}" 
	return cadena
end

def comparar(cadena)
  cad=cadena.length
  i=0
  begin
    if(cadena[i]==(' '))
      puts"Debe ingresar una cadena sin espacios en blanco."
      return false
    else
      i=i+1
    end
  end until(i==cad)

  if(cad>4)
    return true
  else
    puts "Debe ingresar una cadena con más de 4 caracteres."
    return false
  end
end

def palindromo(cadena)
  i=cadena.length-1
  aux=""
  begin
    aux=aux+cadena[i]
    i=i-1
  end until (i<0)
  if(aux==cadena)
    puts"La cadena ingresada: #{cadena} ... es un palíndromo."
    return true
  else
    puts"La cadena ingresada: #{cadena} ... no es un palíndromo, ingrese una cadena que se pueda leer de derecha a izquierda y viceversa."
    return false
  end
end

#main
system('clear')
puts"Cree un programa que permita ingresar una palabra de más de 4 letras sin espacios. Además debe
contener una función llamada “palíndromo?”. Un palíndromo es una palabra que se lee igual tanto desde izq. a
der. como de der. a izq. (también se las llaman capicúa, p.ej. “neuquen”). La función debe retornar true o false.\n\n"
begin
  begin
    cad=ingresar_palabra
  end until((comparar(cad))==true)
end until((palindromo(cad))==true)

print"\nFín del programa."
anticierre=gets.chomp