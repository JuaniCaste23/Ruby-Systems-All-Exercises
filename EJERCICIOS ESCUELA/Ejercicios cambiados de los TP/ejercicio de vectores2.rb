print"Escriba una palabra"
cadena=gets.chomp
cad1=cadena.length
cont=0
cont2=0
i=0
begin
    if((97..122)===cadena[i].ord)
        i=i+1
        cont=cont+1 
    else
        i=i+1
    end
end until((i==cad1) or (cont==1))
if(cont>0)
  puts"Tiene letras"
else
    puts"no tiene letras"
end

begin
  if((48..57)===cadena[i].ord)
      cont2=cont2+1 
  else
     i=i+1
  end
end until((i==cad1) or (cont2>0))
if(cont2==1)
    puts"bien"
else
    puts"La cadena debe contener un número mínimo"
end