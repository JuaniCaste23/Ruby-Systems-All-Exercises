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
  case
  when(aa==false)
    return false
  when((aa>=1900) and (aa<=2019) and ((aa%4==0) and (aa%100!=0) or (aa%400==0)))
    return true
  else
    return false
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
  when((dd==29) and (sub4==true))
    return true
  when((dd==29) and (sub4==false))
    puts"-Ha ingresado un año bisiesto erroneo."
    return false
  when(dd<=28)
    return true
  else
    puts"-Ha ingresado un dia que no cumple con el mes ingresado."
    return false
  end
end

def calcular(fecha)
    t=Time.now
    time=t.to_s
    aanow=time[0..3].to_i ; mmnow=time[5..6].to_i ; ddnow=time[8..9].to_i
    dd=fecha[0..1].to_i ; mm=fecha[3..4].to_i ; aa=fecha[6..9].to_i
    contd=0 ; igualdad=0
    puts"La Fecha actual de la PC: #{ddnow}/#{mmnow}/#{aanow}"
    if((aanow==aa) and (mmnow==mm) and (ddnow==dd))
      igualdad=igualdad+1
    end
    if(igualdad==0)
      begin
        ddnow=ddnow-1
        if(ddnow<=0)
          case
          when((mmnow==2) or (mmnow==4) or (mmnow==6) or (mmnow==8) or (mmnow==9) or (mmnow==11))
            ddnow=31
            mmnow=mmnow-1
          when((mmnow==5) or (mmnow==7) or (mmnow==10) or (mmnow==12))
            ddnow=30
            mmnow=mmnow-1
          when(mmnow==3)
            if((aanow%4==0) and ((aanow%100!=0) or (aanow%400==0)))
              ddnow=29
              mmnow=mmnow-1
            else
              ddnow=28
              mmnow=mmnow-1
            end 
          when(mmnow==1)
            ddnow=31
            mmnow=12
            aanow=aanow-1
          end
        end
        contd=contd+1
      end until((aanow==aa) and (mmnow==mm) and (ddnow==dd))
      contd=contd/2
      puts"-El dia que representa la mitad de nuestra vida es #{contd}."
    else
      puts"-Ambas fechas son iguales."
    end
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
end until((sub1==true) and (sub2==true) and (sub3!=false) and (sub6==true))
puts"La fecha ingresada: #{fecha} es valida!"
calcular(fecha)
puts
print"Fín del Programa."

anticierre=gets.chomp


