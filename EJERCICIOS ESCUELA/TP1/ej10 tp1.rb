def ingresarnumero()
  print "Ingrese un valor primo: "
  numero=gets.chomp.to_i
  return numero
end

def controlar_ingreso(numero)
    num=1
    cont=0
    begin
      if(numero%num==0) and (numero!=1)
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
      if(numero==0) or (numero==1)
        puts"Ha ingresado #{numero} ...Debe ingresar un número primo."
        return false
      else
        return true
      end
    end
  end

def calcular(numero)
    num=numero-1 #cuento los que estan antes de ese numero, por eso el -1
    cont=0
    begin
        if((num==2) or (num==3) or (num==5) or (num==7))
            puts".#{num}"
            num=num-1
            cont=cont+1
        else
            if((num%2==0) or (num%3==0) or (num%5==0) or (num%7==0))
                num=num-1      
            else
                puts".#{num}"
                num=num-1
                cont=cont+1
            end
        end
    end until(num==1) or (num==0)
    puts"Total de números primos anteriores a /#{numero}/ contados: #{cont}"
end

#main
system('clear')
puts"Diseñe un algoritmo modular (PROGRAMA) en el que se pueda ingresar un número X y el programa muestre
todos los números primos positivos anteriores a X.\n\n"
begin
 nump=ingresarnumero
end until((controlar_ingreso(nump)) == true)
calcular(nump)

print"\nFín del programa."
anticierre=gets.chomp