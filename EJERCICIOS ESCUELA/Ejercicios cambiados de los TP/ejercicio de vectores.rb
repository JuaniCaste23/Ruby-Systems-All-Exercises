print"Escriba una palabra"
cadena=gets.chomp
cad=cadena.length
i=0
begin
  puts cadena[i]
  i=i+1
end until(i==cad)

print"Escriba una palabra"
cadena1=gets.chomp
cad1=cadena1.length
cont=0
i=0
begin
    if(cadena[i]==(" "))
        i=i+1
        cont=cont+1 
    else
        i=i+1
    end
end until(i==cad1)
if(cont>0)
  puts"No tiene espacios en blanco"
else
    puts"Tiene espacios en blanco"
end
    
