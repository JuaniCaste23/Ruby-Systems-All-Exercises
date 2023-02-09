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

def calcular(fecha1,fecha2)
  dd1=fecha1[0..1].to_i ; dd2=fecha2[0..1].to_i ; ddt1=0 ; ddt2=0
  mm1=fecha1[3..4].to_i ; mm2=fecha2[3..4].to_i ; mmt1=0 ; mmt2=0
  aa1=fecha1[6..9].to_i ; aa2=fecha2[6..9].to_i ; aat1=0 ; aat2=0 
  cont=0
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
    ddt1=ddt1+dd1
    mmt1=mmt1+mm1
    aat1=aat1+aa1
    ddt2=ddt2+dd2
    mmt2=mmt2+mm2
    aat2=aat2+aa2
    puts"La fecha mas vieja es: #{fecha2}"
    puts"La fecha mas actual es: #{fecha1}"
  when(enc==false)
    ddt1=ddt1+dd2
    mmt1=mmt1+mm2
    aat1=aat1+aa2
    ddt2=ddt2+dd1
    mmt2=mmt2+mm1
    aat2=aat2+aa1
    puts"La fecha mas vieja es: #{fecha1}"
    puts"La fecha mas actual es: #{fecha2}"
  when(enc==0)
    puts"Ambas fechas ingresadas son iguales."
  end
  
  if(enc!=0)
    puts
    puts"Se hara una cuenta regresiva desde la fecha mas actual a la mas vieja:"
    puts
    puts"Fecha inicial: #{ddt1}/#{mmt1}/#{aat1}"
    begin
      ddt1=ddt1-1
      if(ddt1<=0)
        case
        when((mmt1==2) or (mmt1==4) or (mmt1==6) or (mmt1==8) or (mmt1==9) or (mmt1==11))
          ddt1=31
          mmt1=mmt1-1
        when((mmt1==5) or (mmt1==7) or (mmt1==10) or (mmt1==12))
          ddt1=30
          mmt1=mmt1-1
        when(mmt1==3)
          if((aat1%4==0) and ((aat1%100!=0) or (aat1%400==0)))
            ddt1=29
            mmt1=mmt1-1
          else
            ddt1=28
            mmt1=mmt1-1
          end 
        when(mmt1==1)
          ddt1=31
          mmt1=12
          aat1=aat1-1
        end
      end
      print"\r-#{ddt1}/#{mmt1}/#{aat1}" ;sleep 0.7 #sleep es refresco en que se carga imagen, \r me borra el renglon y lo carga por otro.
    end until((ddt1==ddt2) and (mmt1==mmt2) and (aat1==aat2)) #\n salta renglon.
    print" --> Fecha Final \n"
  end
end

#main
cont=0
begin
  fecha=ingresar_fecha
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
print"\nFín del Programa."

anticierre=gets.chomp

