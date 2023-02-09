def ingresar_password()
  print"Ingrese una contraseña: "
  pass=gets
  puts"La contraseña ingresada es: #{pass}"
  return pass
end

def comparar1(pass)
  if((pass.length>=7) and (pass.length<=21))
    return true
  else
    puts "-La contraseña debe tener entre 6 y 20 caracteres."
    return false
  end
end

def comparar2(pass)
  i=0
  begin
    if(pass[i]==(' '))
      puts"-La contraseña no puede contener espacios en blanco."
      return false
    else
      i=i+1
    end
  end until(i==pass.length)

  if(i==pass.length)
    return true
  end
end

def comparar3(pass)
  if((65..90)===pass[0].ord)
    return true
  else
    puts"-La contraseña debe comenzar con una letra en mayuscula."
    return false
  end
end

def comparar4(pass)
  i=0
  cont=0
  begin
   if((48..57)===pass[i].ord)
      cont=cont+1
      i=i+1
   else
      i=i+1
    end
  end until(i==pass.length) 
  
  if(cont==3)
    return true
  else
    if((cont!=3))
      puts"-La contraseña debe contener tres números como máximo"
      return false
    end
  end
end

def comparar5(pass)
  let1=0 ; let2=0 ; let3=0 ; let4=0
  i=0
  begin
    if((pass[i]=="t") or (pass[i]=="T"))
     let1=let1+1
    else
      if((pass[i]=="o") or (pass[i]=="O"))
       let2=let2+1
      else
        if((pass[i]=="a") or (pass[i]=="A")) 
          let3=let3+1
        else
          if((pass[i]=="s") or (pass[i]=="S"))
           let4=let4+1
          end
        end
      end   
    end
    i=i+1
  end until(i==pass.length)
    
  if((let1>1) or (let2>1) or (let3>1) or (let4>1))
    puts"-Las letras ¡T, O, F, S! no deben repetirse más de una vez."#pueden ingresarse tambien fuera del main
    return false
  else
    return true
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
b) Debe comenzar con una letra mayúscula (A..Z).
c) No se permiten espacios en blanco
d) Debe poseer tres números (0..9)
e) Debe poseer al menos cuatro letras que no deben repetirse.\n\n"
begin
  clave=ingresar_password
  a=comparar1(clave)
  b=comparar2(clave)
  c=comparar3(clave)
  d=comparar4(clave)
  e=comparar5(clave)
end until((a==true) and (b==true) and (c==true) and (d==true) and (e==true))
mostrar(clave)

print"\nFín del programa."
anticierre=gets.chomp