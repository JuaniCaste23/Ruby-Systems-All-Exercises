def ingresar_fecha()
  print"Ingrese una fecha -> dd/mm/aaaa: "
  fecha=gets.chomp
  return fecha
end

def comparar_formato(fecha)
  if((fecha[2]=="/") and (fecha[5]=="/")) or ((fecha[2]=="-") and (fecha[5]=="-") and (fecha.length==10))
    return true
  else
    puts"-La Fecha ingresada debe ser respetar el formato: dd/mm/aaaa o dd-mm-aaaa"
    return false
  end
end

def comparar_anios(fecha)
  aa=fecha[6..9].to_i
  if((aa>=1900) and (aa<=2019))
    return aa
  else
    puts"-Ha ingresado un año que no es válido. Debe ser entre(1900-2019)."
    return false
  end
end

def comparar_bisiestos(aa)
  case
  when(aa==false)
    return false
  when((aa%4==0) and ((aa%100!=0) or (aa%400==0)))
    return true
  else
    return false
  end
end

def comparar_meses(fecha)
  mm=fecha[3..4].to_i
  if((mm>=1) and (mm<=12))
    return mm
  else
    puts"-Ha ingresado un mes que no es válido."
    return false
  end
end

def comparar_dias(fecha,sub3,mm)
  dd=fecha[0..1].to_i
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
  when((dd==29) and (sub3==true))
    return true
  when((dd==29) and (sub3==false))
    puts"-Ha ingresado un año bisiesto erroneo."
    return false
  when(dd<=28)
    return true
  else
    puts"-Ha ingresado un dia que no cumple con el mes ingresado."
    return false
  end
end

def calcular(fecha1,fecha2)
  dd1=fecha1[0..1].to_i ; dd2=fecha2[0..1].to_i
  mm1=fecha1[3..4].to_i ; mm2=fecha2[3..4].to_i
  aa1=fecha1[6..9].to_i ; aa2=fecha2[6..9].to_i
  enc=false
  case
  when(aa1!=aa2)
    if(aa1<aa2)
      enc=false
    else
      if(aa1>aa2)
        enc=true
      end
    end
  when(mm1!=mm2)
    if(mm1<mm2)
      enc=false
    else     
      if(mm1>mm2)
        enc=true
      end
    end
  when(dd1!=dd2)
    if(dd1<dd2)
      enc=false
    else
      if(dd1>dd2)
        enc=true
      end
    end
  when((dd1==dd2) and (mm1==mm2) and (aa1==aa2))
    enc=0
  end

  case
  when(enc==true)
    puts"La Fecha mas vieja es: #{fecha2}"
    puts"La fecha mas actual es: #{fecha1}"
  when(enc==false)
    puts"La Fecha mas vieja es: #{fecha1}"
    puts"La fecha mas actual es: #{fecha2}"
  when(enc==0)
    puts"Ambas fechas ingresadas son iguales."
  end
end

#main
cont=0
begin
  begin
    fecha=ingresar_fecha
    sub1=comparar_formato(fecha)
    sub2=comparar_anios(fecha)
    sub3=comparar_bisiestos(sub2)
    sub4=comparar_meses(fecha)
    sub5=comparar_dias(fecha,sub3,sub4)
  end until((sub1==true) and (sub2!=false) and (sub5==true))
  cont=cont+1
  case
  when(cont==1)
    fecha1=fecha
    puts"La primer fecha ingresada: #{fecha1} es valida!"
  when(cont==2)
    fecha2=fecha
    puts"La segunda fecha ingresada: #{fecha2} es valida!"
  end
end until(cont==2)
puts
calcular(fecha1,fecha2)
puts
print"Fín del Programa."

anticierre=gets.chomp
