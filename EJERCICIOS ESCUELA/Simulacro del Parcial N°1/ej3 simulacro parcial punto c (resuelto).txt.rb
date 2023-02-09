def ingresar
 print"Ingrese una cadena de caracteres: "
 a=gets.chomp
end

def calcular(a)
 largo=a.length
 cont=0
 i=0
 begin
   if(a[i]=="b")
     cont=cont+1
   end
   i=i+1
 end until(i==largo)
 
 if(cont>0)
   puts "#{cont}."
 else
   puts "0."
 end
end

#main
pal=ingresar()
calcular(pal)
