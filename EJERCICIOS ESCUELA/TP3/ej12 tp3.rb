def ingreso()
  print"Ingrese un dato (A,E,D,I,Fecha): "
  cadena=gets.chomp.to_s
  return cadena
end

def comparar_apellido(a)
  i=0
  begin
    if(((48..57)===a[i].ord) or (a[i]=="-") or (a[i]=="_"))
      puts"-Debe ingresar un Apellido sin digitos númericos o guiones."
      return false
    end
    i=i+1
  end until(i==a.length) 
  return true
end

def comparar1_email(e)
  cont=0
  i=1
  if(e[0]==".")
    puts"-No debe ingresar un punto al inicio del e-mail."
    return false
  else
    begin
      if(e[i]==".")
        cont=cont+1
      end
      i=i+1
    end until(i==e.length)
  end

  if(cont==0)
    puts"-Debe ingresar un punto en el e-mail."
    return false
  else
    return true
  end
end

def comparar2_dato2(e)
  cont=0
  i=0
  begin
    if(e[i]=="@")
      cont=cont+1
    end
    i=i+1
  end until(i==e.length)

  if(cont>1)
      puts"-Solo debe contener un símbolo Arroba(@)"
      return false
  else
    if(cont==0)
      puts"-El e-mail debe contener un símbolo Arroba(@)"
      return false
    else
      return true
    end
  end
end
    
def comparar_dato3(d)
  i=0
  begin
    if(((33..47)===d[i].ord) or ((58..64)===d[i].ord) or ((91..96)===d[i].ord))
      puts"-Debe ingresar un domicilio que no contenga símbolos, signos de puntuación, admiración o exclamación."
      return false
    end
    i=i+1
  end until(i==d.length)
  return true
end

def comparar1_dato4(i)
  cad=i.length-1
  cont=0

  if(i[0]==".")
    puts"-No debe ingresar un punto decimal al inicio de la cadena."
    return false
  end
  if(i[cad]==".")
    puts"-No debe ingresar un punto decimal al final de la cadena."
    return false
  end

  j=0
  begin
    if(i[j]==".")
      cont=cont+1
    end
    j=j+1
  end until(j==i.length)

  if(cont>1)
    puts"-Debe ingresar un solo punto decimal."
    return false
  else
    return true
  end
end

def comparar2_dato4(i)
  j=0
  begin
    if((48..57)===i[j].ord) or (i[j]==".")
      j=j+1
    else
      puts"-El importe solo puede contener dígitos numericos."
      return false
    end
  end until(j==i.length) 
  return true
end

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
system('clear') #o cls para windows
begin
  cad=ingreso
  case
  when(cad=="A")
    begin
      print"Ingrese su Apellido: "
      a=gets.chomp
    end until((comparar_dato1(a))==true)
    puts
    puts"El dato ingresado: #{a} ¡¡¡Es valido!!!"
    enc=true
  when(cad=="E")
      begin
        print"Ingrese su E-Mail: "
        e=gets.chomp
        sub1=comparar1_dato2(e)
        sub2=comparar2_dato2(e)
      end until((sub1==true) and (sub2==true))
      puts
      puts"El dato ingresado: #{e} ¡¡¡Es valido!!!"
      enc=true
  when(cad=="D")
        begin
          print"Ingrese su Domicilio: "
          d=gets.chomp
        end until((comparar_dato3(d))==true)
        puts
        puts"El dato ingresado: #{d} ¡¡¡Es valido!!!"
        enc=true
  when(cad=="I")
          begin
            print"Ingrese un importe: "
            i=gets.chomp
            sub1=comparar1_dato4(i)
            sub2=comparar2_dato4(i)
          end until((sub1==true) and (sub2==true))
          puts
          puts"El dato ingresado: #{i} ¡¡¡Es valido!!!"
          enc=true
   when(cad=="Fecha")
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
        enc=true
    else
        puts"No se ha ingresado ningún caracter que fuera (A,E,D,I,Fecha). Ingrese de nuevo."
        enc=false
    end
end until(enc==true)
puts
print"Fín del Programa."

anticierre=gets.chomp