
def contarpalabras(pal)
    conte=0
    for i in 0..pal.length-1
        if pal[i]==" "
           conte=conte+1
        end
	end
    if((conte>0) or (pal.length>0))
       conte=conte+1
    end
    return conte
end

def tienepuntos?(pal)
    cont=0
    for i in 0..pal.length-1
      if  (pal[i]==".")
         cont=cont+1
      end
    end
    if((cont==1) and (pal[pal.length-1]=="."))
      return true
    else
      return false
    end
end


#ora="esta es una oracion con varias palabras"
print"ingrese palabra: "
ora=gets.chomp
puts contarpalabras(ora)
puts tienepuntos?(ora)