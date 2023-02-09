def ingresar_fecha
  begin
    print"Ingrese una fecha válida -> dd/mm/aaaa: "
    fecha=gets.chomp
    sub1=comparar_formato(fecha)
    sub2=comparar_anios(fecha)
    sub3=comparar_meses(fecha)
    sub4=comparar_dias(fecha,sub2,sub3)
  end until((sub1==true) and (sub4==true))
  return fecha
end

def comparar_formato(fecha)
  if(((fecha[2]=="/") and (fecha[5]=="/")) or ((fecha[2]=="-") and (fecha[5]=="-")) and (fecha.length==10))
    return true
  else
    puts"-La Fecha ingresada debe respetar el formato: dd/mm/aaaa o dd-mm-aaaa"
    return false
  end
end

def comparar_anios(fecha)
  aa=fecha[6..9].to_i
  if((aa>=1900) and (aa<=2019))
    return aa
  else
    puts"-Ha ingresado un año que no es válido. Debe ser entre (1900-2019)"
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

def comparar_dias(fecha,aa,mm)
  dd=fecha[0..1].to_i
  case
  when(aa==false)
    return false
  when(mm==false)
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
  when(dd==29) 
    if((aa%4==0) and ((aa%100!=0) or (aa%400==0)))
      return true
    else
      puts"-Ha ingresado un año bisiesto erroneo."
      return false
    end
  when(dd<=28)
    return true
  else
    puts"-Ha ingresado un dia que no cumple con el mes ingresado."
    return false
  end
end

def calcular(fecha)
  dd=fecha[0..1].to_i ; mm=fecha[3..4].to_i ; aa=fecha[6..9].to_i
  mes=""
  case
  when(mm==1)
    mes="Enero"
  when(mm==2)
    mes="Febrero"
  when(mm==3)
    mes="Marzo"
  when(mm==4)
    mes="Abril"
  when(mm==5)
    mes="Mayo"
  when(mm==6)
    mes="Junio"
  when(mm==7)
    mes="Julio"
  when(mm==8)
    mes="Agosto"
  when(mm==9)
    mes="Septiembre"
  when(mm==10)
    mes="Octubre"
  when(mm==11)
    mes="Noviembre"
  when(mm==12)
    mes="Diciembre"
  end
  puts"Punta Alta, #{dd} de #{mes} de #{aa}."
end
    
#main
fecha=ingresar_fecha
puts
puts"¡La fecha ingresada es válida!"
calcular(fecha)
puts
print"Fín del Programa."

anticierre=gets.chomp