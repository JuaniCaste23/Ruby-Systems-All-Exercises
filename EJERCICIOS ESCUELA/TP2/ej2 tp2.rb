def ingresar_password()
    print "Ingrese la contraseña: "
    pass= gets.chomp.to_i
    return pass
end

def controlar_password(pass,cont)
  clave=12345
  if(pass!=clave)
    $cont=$cont+1
    puts "Acceso Denegado." 
    return false
  else 
    puts "La contraseña escrita por el usuario es: #{pass} ...¡Acceso Permitido!"
    return true
  end
end

def findelprograma(cont)
  if($cont==3)
    puts "Ha agotado todos los intentos disponibles."
  end
end

#main
system('clear')
puts"Modifique el programa anterior para que sólo se permitan 3 intentos de clave no válida.\n\n"
$cont=0
begin
  nom=ingresar_password
  sub1=controlar_password(nom,$cont)
end until((sub1==true) or ($cont==3))
findelprograma($cont)

print"\nFin del programa."
anticierre=gets.chomp