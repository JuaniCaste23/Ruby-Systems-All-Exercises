def ingresar_password()
  print"Ingrese una contraseña: "
  pass=gets #sin chomp porq me tira error
  puts"La contraseña ingresada es: #{pass}"
  return pass
end

def comparar1(pass) #debe tener mas de seis caracteres y menos de veinte.
  if((pass.length>=7) and (pass.length<=21))#es entre 7 y 21 porq al quitar el chomp me toma el enter como un caracter mas.
    return true
  else
    puts"-La contraseña debe tener entre 6 y 20 caracteres."
    return false
  end
end

def comparar2(pass) #no se permiten espacios en blanco.
  i=0
  begin
    if(pass[i]==(' '))
      puts"-La contraseña no puede contener espacios en blanco."
      return false
    end
    i=i+1
  end until(i==pass.length)

  if(i==pass.length)
    return true
  end
end

def comparar3(pass) #debe comenzar con una letra en minuscula.
  if((97..122)===pass[0].ord)
    return true
  else
    puts"-La contraseña debe comenzar con una letra en minuscula."
    return false
  end
end

def comparar4(pass) #debe comenzar con un numero minimo
  cont=0
  i=0
  begin
    if((48..57)===pass[i].ord)
      cont=cont+1 
    end
    i=i+1
  end until((i==pass.length) or (cont==1))
  
  if(cont==1)
    return true
  else
    puts"-La contraseña debe contener un número mínimo."
    return false
  end
end

def mostrar(pass)
  puts "La contraseña ingresada: #{pass} ...cumple todas las pautas, ¡Acceso Permitido!"
end

#main
system('clear')
puts"Escriba un programa que permita ingresar una contraseña que debe cumplir las siguientes pautas, si las
pautas no se cumplen, se debe solicitar su ingreso nuevamente, informando la falla.
a) Debe tener más de seis caracteres y menos de veinte.
b) Debe comenzar con una letra (a..z)
c) No se permiten espacios en blanco
d) Debe poseer al menos un número (0..9)\n\n"
begin
  clave=ingresar_password
  a=comparar1(clave)
  b=comparar2(clave)
  c=comparar3(clave)
  d=comparar4(clave)
end until((a==true) and (b==true) and (c==true) and (d==true))
mostrar(clave)

print"\nFín del programa."
anticierre=gets.chomp