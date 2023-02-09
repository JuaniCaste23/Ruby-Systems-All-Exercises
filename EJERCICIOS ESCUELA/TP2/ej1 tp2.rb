def ingresar_password()
    print "Ingrese la contraseña: "
    pass= gets.chomp.to_i
    return pass
end

def controlar_password(pass)
  clave=12345
  if(pass!=clave)
    system('clear')
    puts "Acceso Denegado."
    return false
  else
    system('clear')
    puts "La contraseña escrita es: #{pass} ...¡Acceso Permitido!"
    return true
  end
end

#main
system('clear')
puts"Construir una función “controlar_password?” que pida por teclado una cadena y la compare con una
cadena ya almacenada. Si coinciden, la función debe devolver TRUE; en otro caso, devolver FALSE.
Utilizando el resultado de la función mostrar el mensaje “Acceso Permitido” o “Acceso denegado” según
corresponda.\n\n"
begin
  contra=ingresar_password
end until((controlar_password(contra))==true)

print"\nFín del programa."
anticierre=gets.chomp