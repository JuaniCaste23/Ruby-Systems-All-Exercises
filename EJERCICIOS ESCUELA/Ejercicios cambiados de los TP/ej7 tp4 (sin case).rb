def ingresar_fecha()
  print"Ingrese una fecha -> dd/mm/aaaa: "
  fecha=gets.chomp
  return fecha
end

def comparar1(fecha)
  if(fecha.length==10)
    return true
  else
    puts"-La cadena debe ser unicamente de 10 caracteres."
    return false
  end  
end

def comparar2(fecha)
  if((fecha[2]=="/") and (fecha[5]=="/")) or ((fecha[2]=="-") and (fecha[5]=="-"))
    return true
  else
    puts"-La Fecha ingresada debe ser asi: dd/mm/aaaa o dd-mm-aaaa"
    return false
  end
end

def comparar3(fecha)
  aa=fecha[6..9].to_i
  if((aa>=1900) and (aa<=2019))
    return aa
  else
    puts"-Ha ingresado un año que no es válido. Debe ser entre(1900-2019)."
    return false
  end
end

def comparar4(aa)
  if(aa==false)
    return false
  else
    if((aa>=1900) and (aa<=2019) and ((aa%4==0) and (aa%100!=0) or (aa%400==0)))
      return true
    else
      return false
    end
  end
end

def comparar5(fecha)
  mm=fecha[3..4].to_i
  if((mm>=1) and (mm<=12))
    return mm
  else
    puts"-Ha ingresado un mes que no es válido."
    return false
  end
end

def comparar6(fecha,sub4,mm)
  dd=fecha[0..1].to_i
  if((mm==1) or (mm==3) or (mm==5) or (mm==7) or (mm==8) or (mm==10) or (mm==12))
    if(dd>31)
      puts"-Ha ingresado un dia que no cumple con el mes ingresado."
      return false
    else
      return true
    end
  end

  if((mm==4) or (mm==6) or (mm==9) or (mm==11))
    if(dd>30)
      puts"-Ha ingresado un dia que no cumple con el mes ingresado."
      return false
    else
      return true
    end
  end

  if(mm==2) 
    if((dd==29) and (sub4==true))
      return true
    else
      if(dd<=28)
        return true
      else
        puts"-Ha ingresado un año bisiesto erroneo."
        return false
      end
    end
  end
end

def calcular(fecha)
  dd=fecha[0..1].to_i
  mm=fecha[3..4].to_i
  aa=fecha[6..9].to_i
  aux=""
  
  if(mm==1)
    aux=aux+"Enero"
  end
  if(mm==2)
    aux=aux+"Febrero"
  end
  if(mm==3)
    aux=aux+"Marzo"
  end
  if(mm==4)
    aux=aux+"Abril"
  end
  if(mm==5)
    aux=aux+"Mayo"
  end
  if(mm==6)
    aux=aux+"Junio"
  end
  if(mm==7)
    aux=aux+"Julio"
  end
  if(mm==8)
    aux=aux+"Agosto"
  end
  if(mm==9)
    aux=aux+"Septiembre"
  end
  if(mm==10)
    aux=aux+"Octubre"
  end
  if(mm==11)
    aux=aux+"Noviembre"
  end
  if(mm==12)
    aux=aux+"Diciembre"
  end
  puts"Punta Alta, #{dd} de #{aux} de #{aa}."
end
    
#main
begin
  fecha=ingresar_fecha
  sub1=comparar1(fecha)
  sub2=comparar2(fecha)
  sub3=comparar3(fecha)
  sub4=comparar4(sub3)
  sub5=comparar5(fecha)
  sub6=comparar6(fecha,sub4,sub5)
end until((sub1==true) and (sub2==true) and (sub6==true))
puts"La fecha ingresada: #{fecha} es valida!"
calcular(fecha)
puts
puts"Fín del Programa."

anticierre=gets.chomp