def ingresarnumero()
  print "Ingrese un valor primo: "
  numero=gets.chomp.to_i
  return numero
end

def controlar_ingreso(numero)
  num=1
  cont=0
  begin
    if(numero%num==0)
      cont=cont+1
      num=num+1
    else
      num=num+1
    end
  end until(num>numero)
  
  if(cont>2)
    puts"Ha ingresado el: #{numero} ...Debe ingresar un número primo."
    return false
  else
    if(numero==0)
      puts"Ha ingresado #{numero} ...Debe ingresar un número primo."
      return false
    else
      return true
    end
  end
end

def calcular(numero,suma,cont)
  print"Desea continuar sumando numeros primos? (s/n): "
  control=gets.chomp
  if((control=="n") or (control=="no") or (control=="No") or (control=="N") or (control=="NO"))
    puts"\nLa suma total calculada de números primos es: #{suma}"
    puts"Los numeros primos contados que fueron ingresados en total son: #{cont}"
    return true
 else
    puts"El programa seguira sumando números primos."
    return false
  end
end
          

#main
system('clear')
puts"Diseñe un algoritmo modular (PROGRAMA) que permita ingresar valores y sumar aquellos que sean primos.
Considere que el ingreso finaliza a petición del usuario y que debe presentarse al finalizar la suma calculada y la
cantidad de valores sumados. Indique cómo se pasan los parámetros al subprograma.\n\n"
suma=0
cont=0
begin
 begin
    num=ingresarnumero
 end until((controlar_ingreso(num))==true)
 suma=suma+num
 cont=cont+1
end until((calcular(num,suma,cont))==true)

print"\nFín del programa."
anticierre=gets.chomp