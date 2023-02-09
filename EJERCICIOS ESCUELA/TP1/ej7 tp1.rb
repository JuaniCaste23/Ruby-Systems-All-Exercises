def ingresarnumero()
	print "Ingrese un numero: "
	numero=gets.chomp.to_i
	puts "El numero ingresado es: #{numero}"
	return numero 
end

def comparar(num,num2)
  if(num<num2) 
    puts"Ha ingresado como primer número el #{num}. Ingrese de nuevo dos números y asegurese que el primer número ingresado sea MAYOR que el segundo número ingresado."
    return false
  else
    if(num2==0)
      puts"Ha ingresado un 0. Los números ingresados deben ser mayor a 0; Ingrese de nuevo."
      return false
    else
      return true
    end
  end
end

def division(num,num2)
  while(num >= num2)
	  num= num - num2
  end 
  puts"El resto de la división entre el primer número ingresado y el segundo es: #{num}"
end

#main
system('clear')
puts"Diseñe un algoritmo modular (PROGRAMA) que calcule el RESTO de la división entera de 2 números (enteros
positivos) ingresados por el usuario, mediante restas sucesivas (utilice estructuras iterativas para el cálculo).
Considere que el dividendo y divisor se introducen en el programa principal. Indique cómo pasan los parámetros al
subprograma.\n\n"
begin  
  num=ingresarnumero
  num2=ingresarnumero
end until((comparar(num,num2))==true)
division(num,num2)

print"\nFín del programa."
anticierre=gets.chomp