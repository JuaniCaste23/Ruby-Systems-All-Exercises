def ingresar_nombres()
    print"Ingrese sus dos nombres separados con un solo espacio: "
    nombres=gets.chomp.to_s
    return nombres
end

def ingresar_apellido
    print"Ingrese su apellido: "
    apellido=gets.chomp.to_s
    return apellido
end

def comparar1(nombres)
    cont=0
    i=0
    j=nombres.length-1

    if(nombres[j]==" ")
       puts"La cadena no debe finalizar con un espacio en blanco."
       return false 
    end

    begin
        if(nombres[i]==" ")
           cont=cont+1
           i=i+1
        else
           i=i+1
        end
    end until(i==nombres.length)

    if(cont>=2)
        puts"Debe ingresar un solo espacio"
        return false
    else
        if(cont==0)
           puts"Debe ingresar dos nombres."
           return false
        else
            return true
        end
    end
end

def comparar2(apellido)
   cont=0
   i=0
   j=apellido.length-1

   if(apellido[j]==" ")
      puts"La cadena no debe finalizar con un espacio en blanco."
      return false 
   end

   begin
       if(apellido[i]==" ")
          cont=cont+1
          i=i+1
       else
          i=i+1
       end
   end until(i==apellido.length)

   if(cont>=1)
      puts"Debe ingresar un apellido y ningún espacio en blanco."
      return false
   else
      return true
   end
end
    
def calcular(nombres,apellido)
   aux=""
   cont=0
   cad1=nombres.length
   cad2=apellido.length
   i=0
   j=0
   begin
      if((nombres[i]==" ") or (apellido[j]==" "))
         i=i+1
         j=j+1
      else
         cont=cont+1
         i=i+1
         j=j+1
      end
   end until((i>cad1) and (j>cad2))

   if(cont<=30)
      aux=aux + nombres + " " + apellido
      puts"La suma entre los nombres y el apellido no supera los 30 caracteres: #{aux}"
   else 
      i=0
      print"La suma entre los nombres y el apellido supera los 30 caracteres: "
      begin
         if(nombres[i]==" ") 
            print"#{nombres[i]}"
            i=i+1
            print"#{nombres[i]}."
            i=i+1
         else
            print"#{nombres[i]}"
            i=i+1
         end
      end until(i>cad1)
      print" ""#{apellido}"
   end 
end

#main
begin
  nom=ingresar_nombres
end until((comparar1(nom))==true)
begin
  ap=ingresar_apellido
end until((comparar2(ap))==true)
calcular(nom,ap)

anticierre=gets.chomp