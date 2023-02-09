inf = 0
sup= sort.length-1
mitad= (sup+inf) /2
while(inf<sup) or (sort[mitad]!=valor)
   if dato<sort[mitad]
      sup=mitad-1
    else
       inf=mitad-1
    end
    mitad= (sup + inf) /2
end

if valor == sort[mitad]
   return mitad #imprime mitad
else
   return false #imprime que no existe o no se pudo encontrar
end