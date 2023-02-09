def ingresar_fecha()
  print"Ingrese una fecha -> dd/mm/aaaa: "
  fecha=gets.chomp
  return fecha
end

def comparar_longitud(fecha)
  if(fecha.length==10)
    return true
  else
    puts"-La cadena debe ser unicamente de 10 caracteres."
    return false
  end  
end

def comparar_guiones_y_barras(fecha)
  if((fecha[2]=="/") and (fecha[5]=="/")) or ((fecha[2]=="-") and (fecha[5]=="-"))
    return true
  else
    puts"-La Fecha ingresada debe ser asi: dd/mm/aaaa o dd-mm-aaaa"
    return false
  end
end

def comparar_anios(fecha)
  aa=fecha[6..9].to_i #xx.xx.aaaa
  if((aa>=1940) and (aa<=2020))
    return aa
  else
    puts"-Ha ingresado un año que no es válido. Debe ser entre (1940-2020)."
    return false
  end
end

def comparar_bisiestos(anios)
  case
  when(anios==false)
    return false
  when(((anios%4==0) and (anios%100!=0) or (anios%400==0))) #indica si es bisiesto
    return true
  else
    return false
  end
end

def comparar_meses(fecha)
  mm=fecha[3..4].to_i #xx.mm.xxxx
  if((mm>=1) and (mm<=12))
    return mm
  else
    puts"-Ha ingresado un mes que no es válido."
    return false
  end
end

def comparar_dias(fecha,bisiesto,mm)
  dd=fecha[0..1].to_i #dd.xx.aaaa
  if(mm==false)
    return false
  end

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

  case(mm==2) 
  when((dd==29) and (bisiesto==true))
    return true
  when((dd==29) and (bisiesto==false))
    puts"-Ha ingresado un año bisiesto erroneo."
    return false
  when(dd<=28)
    return true
  else
    puts"-Ha ingresado un dia que no cumple con el mes ingresado."
    return false
  end
end

#main
begin
  fecha=ingresar_fecha
  sub1=comparar_longitud(fecha)
  sub2=comparar_guiones_y_barras(fecha)
  sub3=comparar_anios(fecha)
  sub4=comparar_bisiestos(sub3)
  sub5=comparar_meses(fecha)
  sub6=comparar_dias(fecha,sub4,sub5)
end until((sub1==true) and (sub2==true) and (sub3!=false) and (sub6==true))
puts"La fecha ingresada: #{fecha} es valida!"
puts
print"Fín del Programa."

anticierre=gets.chomp

