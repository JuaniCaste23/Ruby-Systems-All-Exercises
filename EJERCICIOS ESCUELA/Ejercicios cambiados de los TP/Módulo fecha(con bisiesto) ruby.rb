def ingresarfecha
   begin
      print "ingrese una fecha dd/mm/aaaa : "
      f=gets.chomp
   end until tam(f)==true and separadores(f)==true and validar(f)==true
end

def validar(fecha)
    dd=fecha[0..1].to_i
    mm=fecha[3..4].to_i
    aa=fecha[6..9].to_i
    if mm>=1 and mm<=12
       if aa>=0 and aa<=2100
           if mm==1 or mm==3 or mm==5 or mm==7 or mm==8 or mm==10 or mm==12
                 if dd > 31
                     ret=false
                 else
                     ret=true
                 end
           else
              if mm==4 or mm==6 or mm==9 or mm==11
                 if dd>30
                    ret=false
                 else
                    ret=true
                 end
              else
                 if mm==2
                   if dd <= 29
                    if dd==29 and es_bisiesto?(aa)
                      ret=true
                    else
                      if dd<=28
                        ret=true
                      else
                        ret=false
                      end
                    end
                   else
                     ret=false
                   end
                 end
              end
           end 
       else
         ret=false
       end   
    else
       ret=false
    end
    return ret


end


def es_bisiesto?(anio)
    if (anio % 4==0 and (anio % 100!= 0 or anio % 400==0))
         return true
    else
         return false
    end
end


def separadores(fecha)
  if contarcar(fecha,"/")==2 or contarcar(fecha,"-")==2
      if (fecha[2] == "/" and fecha[5]=="/") or (fecha[2] == "-" and fecha[5]=="-")
          return true
      else
          return false
      end    
  else
     return false
  end        
end

def contarcar(str,c)
    conta=0    
    for i in 0..str.length-1
       if str[i]==c
          conta=conta+1
       end
    end
    return conta
end

def tam(fecha)
    if fecha.length==10
        return true
    else
        return false
    end
end

f=ingresarfecha
