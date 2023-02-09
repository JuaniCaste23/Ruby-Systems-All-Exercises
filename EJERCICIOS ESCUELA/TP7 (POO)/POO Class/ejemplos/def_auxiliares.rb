
#----------------------------------------------------------
#----------------------Manejo de string--------------------
#----------------------------------------------------------

#Dado un string y un inicio y fin (indice de arreglo) retornara dicha sub cadena
def sub_string(arr,ini,fin)
    i=0
    str=""
    arr.each_char do |char|
        if i>=ini && i<=fin
            str=str+char
        end
        i=i+1
    end
    return str
end

#Dado un string y un nuemeor retornara un string sin los primeros n elementos
def limpiar_first(str,num)
    cad_aux=""
    i=1
    str.each_char do |letra|
         if i>num
             cad_aux=cad_aux+letra
         end
         i=i+1
     end
 
     return cad_aux
 end

#Dado un string y un char eliminara todas las pariciones de dicho char en la cadena
def limpiar_char(str,eliminar)
    cadena_limpia=""
     str.each_char do |letra|
         if letra!=eliminar
         cadena_limpia=cadena_limpia+letra
         end
     end
     return cadena_limpia
 end


#----------------------------------------------------------
#-------------------------FORMATEO-------------------------
#----------------------------------------------------------

#Dado un sueldo la agrega tantos ceros adelante para q respete el formato ingresado
def formatera_sueldo(sueldo,cant)
    while (cant!=sueldo.size())
      sueldo="0"+sueldo
  end
  return sueldo
end

#Dadp un string y un numero genera un nuevo string con n espacios atras
def formato_columna(elem,espaciado)
    while (espaciado!=elem.size())
        elem=elem+" "
    end
    return elem
end

def formato_columna_inv(elem,espaciado)
    while (espaciado!=elem.size())
        elem=" "+elem
    end
    return elem
end
