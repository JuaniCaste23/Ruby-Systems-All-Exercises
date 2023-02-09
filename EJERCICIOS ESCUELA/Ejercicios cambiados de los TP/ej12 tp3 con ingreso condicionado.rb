def ingreso()
    cadena=gets.chomp
    return cadena
end

def comparar_dato1(a)
    cont=0
    i=0
    begin
      if(((48..57)===a[i].ord) or (a[i]=="-") or (a[i]=="_"))
        cont=cont+1
        i=i+1
      else
        i=i+1
      end
    end until(i==a.length)

    if(cont==0)
      return true
    else
      puts"Debe ingresar un Apellido sin digitos númericos o guiones."
      return false
    end   
end

def comparar1_dato2(e)
  cont=0
  i=1
  if(e[0]==".")
    puts"No debe ingresar un punto al inicio del e-mail."
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
    puts"Debe ingresar un punto en el e-mail."
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
      puts"Solo debe contener un símbolo Arroba(@)"
      return false
    else
      if(cont==0)
        puts"El e-mail debe contener un símbolo Arroba(@)"
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
        puts"Debe ingresar un domicilio que no contenga símbolos, signos de puntuación, admiración o exclamación."
        return false
      else
        i=i+1
      end
    end until(i==d.length)

    if(i==d.length)
      return true
    end
end

def comparar1_dato4(i)
  cad=i.length-1
  cont=0

  if(i[0]==".")
    puts"No debe ingresar un punto decimal al inicio de la cadena."
    return false
  end
  if(i[cad]==".")
    puts"No debe ingresar un punto decimal al final de la cadena."
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
    puts"Debe ingresar un solo punto decimal."
    return false
  else
    return true
  end
end

def comparar2_dato4(i)
  cont=0
  j=0
  begin
    if((48..57)===i[j].ord) or (i[j]==".")
      j=j+1
    else
      cont=cont+1
      j=j+1
    end
  end until(j==i.length) 

  if(cont==0) 
    return true
  else
    puts"El importe solo puede contener dígitos numéricos."
    return false
  end
end

def comparar1_dato5(fecha)
  if(fecha.length==10)
    return true
  else
    puts"-La cadena no debe exceder los 10 caracteres."
    return false
  end  
end

def comparar2_dato5(fecha)
  validar=0
  if((fecha[2]=="/") and (fecha[5]=="/")) or ((fecha[2]=="-") and (fecha[5]=="-"))
    validar=validar+1
  else
    puts"-La Fecha ingresada debe ser asi: dd/mm/aaaa o dd-mm-aaaa"
    return false
  end
  
  if(validar==1)
    return true
  end
end

def comparar3_dato5(fecha)
  i=0
  begin
    if(((48..57)===fecha[i].ord) or (i==2) or (i==5))
      i=i+1
    else
      puts"-Fecha mal ingresada por contener algún caracter erróneo."
      return false
    end
  end until(i==fecha.length)

  if(i==fecha.length)
    return true
  end  
end

def comparar4_dato5(fecha)
  aa=fecha[6..9].to_i
  if((aa>=1900) and (aa<=2019))
    return true
  else
    puts"-Ha ingresado un año que no es válido. Debe ser entre(1900-2019)."
    return false
  end
end

def comparar5_dato5(fecha)
  mm=fecha[3..4].to_i
  if((mm>=1) and (mm<=12))
    return mm
  else
    puts"-Ha ingresado un mes que no es válido."
    return false
  end
end

def comparar6_dato5(fecha,mm)
  dd=fecha[0..1].to_i
  if((mm==1) or (mm==3) or (mm==5) or (mm==7) or (mm==8) or (mm==10) or (mm==12))
    if(dd>31)
      puts"-Ha ingresado un dia que no cumple con el mes ingresado."
      return false
    else
      return true
    end
  else
    if((mm==4) or (mm==6) or (mm==9) or (mm==11))
      if(dd>30)
        puts"-Ha ingresado un dia que no cumple con el mes ingresado."
        return false
      else
        return true
      end
    else
      if(mm==2)
        if (dd<=28)
          return true
        else
          puts"-Ha ingresado un dia que no cumple con el mes ingresado."
          return false
        end
      end
    end
  end
end    

def validar(a,e,d,i,fecha)
    puts"El ingreso de los siguientes datos:"
    puts"1) #{a}"
    puts"2) #{e}"
    puts"3) #{d}"
    puts"4) #{i}"
    puts"5) #{fecha}"
    puts"¡¡¡Son validos!!!"
end


#main
begin
  print"Ingrese su Apellido: "
  a=ingreso
end until((comparar_dato1(a))==true)
begin
  print"Ingrese su E-Mail: "
  e=ingreso
  sub1=comparar1_dato2(e)
  sub2=comparar2_dato2(e)
end until((sub1==true) and (sub2==true))
begin
  print"Ingrese su Domicilio: "
  d=ingreso
end until((comparar_dato3(d))==true)
begin
  print"Ingrese un importe: "
  i=ingreso
  sub1=comparar1_dato4(i)
  sub2=comparar2_dato4(i)
end until((sub1==true) and (sub2==true))
begin
  print"Ingrese su Fecha de Nacimiento dd/mm/aaaa: "
  fecha=ingreso
  sub1=comparar1_dato5(fecha)
  sub2=comparar2_dato5(fecha)
  sub3=comparar3_dato5(fecha)
  sub4=comparar4_dato5(fecha)
  sub5=comparar5_dato5(fecha)
  sub6=comparar6_dato5(fecha,sub5)
end until((sub1==true) and (sub2==true) and (sub3==true) and (sub6==true))
validar(a,e,d,i,fecha)
puts
puts"Fín del Programa."

anticierre=gets.chomp