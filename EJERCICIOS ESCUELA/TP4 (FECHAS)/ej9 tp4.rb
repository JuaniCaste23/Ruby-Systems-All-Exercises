def fechaautomatica
  anioauto=rand(1950..2019)
  mesauto=rand(1..12)
  if(mesauto<10)
    mesauto="0#{mesauto}"
  end

  enc=false
  begin
    diaauto=rand(1..31)
    case(mesauto==2)
    when((diaauto==29) and (anioauto%4==0) and ((anioauto%100!=0) or (anioauto%400==0)))
      enc=true
    when(diaauto<=28)
      enc=true
    end
    if((mesauto==1) or (mesauto==3) or (mesauto==5) or (mesauto==7) or (mesauto==8) or (mesauto==10) or (mesauto==12))
      if(diaauto<=31)
        enc=true
      end
    end
    if((mesauto==4) or (mesauto==6) or (mesauto==9) or (mesauto==11))
      if(diaauto<=30)
        enc=true
      end
    end
  end until(enc==true)

  if(diaauto<10)
    diaauto="0#{diaauto}"
  end
  fechaauto="#{diaauto}/#{mesauto}/#{anioauto}"
  return fechaauto
end

def ingresar_fecha
  begin
    print"-Adivine la fecha secreta. Escriba una fecha válida: "
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
    puts"-La fecha ingresada debe respetar el formato: dd/mm/aaaa o dd-mm-aaaa"
    return false
  end
end

def comparar_anios(fecha)
  aa=fecha[6..9].to_i
  if((aa>=1950) and (aa<=2019))
    return aa
  else
    puts"-Ha ingresado un año que no es válido. Debe ser entre (1950-2019)"
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

def calcular(fechaauto,fecha)
  puts
  puts"¡La fecha ingresada: #{fecha} es valida!. Ahora veamos si es igual a la fecha secreta:"
  puts"--> #{fechaauto} trampa!!!!"
  puts
  ddnow=fechaauto[0..1] ; mmnow=fechaauto[3..4] ; aanow=fechaauto[6..9]
  dd=fecha[0..1]        ; mm=fecha[3..4]        ; aa=fecha[6..9]
  contaciertos=0
  begin
    if(dd==ddnow)
      puts"IMPORTANTE: Ha adivinado el dia de la fecha secreta: #{ddnow}"
      contaciertos=contaciertos+1
    else
      puts"-El dia no ha sido adivinado."
    end
    if(mm==mmnow)
      puts"IMPORTANTE: Ha adivinado el mes de la fecha secreta: #{mmnow}"
      contaciertos=contaciertos+1
    else
      puts"-El mes no ha sido adivinado."
    end
    if(aa==aanow)
      puts"IMPORTANTE: Ha adivinado el año de la fecha secreta: #{aanow}"
      contaciertos=contaciertos+1
    else
      puts"-El año no ha sido adivinado."
    end
    
    if(contaciertos<3)
      puts
      print"Aun no ha adivinado la fecha secreta. ¿Quiere continuar el programa? "
      return false
    end
  end until(contaciertos==3)

  if(contaciertos==3)
    return true
  end
end

def cerradura
  begin
    print"Pulse si o no: "
    cierre=gets.chomp
  end until((cierre=="si") or (cierre=="no"))
  return cierre
end

def mensaje_final(intentos,fechaauto,cierre,subfinal)
  if(subfinal==true)
    puts
    puts"¡¡HA ADIVINADO LA FECHA SECRETA!! --> #{fechaauto}" 
    puts
    puts"Intentos para adivinar la fecha secreta: #{intentos}."
    puts
    print"¡¡Felecidades!!. Se procede a cerrar el programa."
  else
    if(cierre=="no")
      puts
      puts"-La fecha secreta era: #{fechaauto}"
      puts"-Intentos para adivinar la fecha: #{intentos}."
      print"\nSe cerrara el programa."
    end
  end
end

#main
system('cls')
intentos=0
fechaauto=fechaautomatica 
begin
  fecha=ingresar_fecha
  subfinal=calcular(fechaauto,fecha)
  if(subfinal==false)
    intentos=intentos+1
    subcierre=cerradura
  end
end until((subfinal==true) or (subcierre=="no"))
mensaje_final(intentos,fechaauto,subcierre,subfinal)

anticierre=gets.chomp