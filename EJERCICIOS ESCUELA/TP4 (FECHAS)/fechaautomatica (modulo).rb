def fechaautomatica
  aanow=rand_anio
  mmnow=rand_meses
  ddnow=rand_dia(mmnow,aanow)
  fechaauto="#{ddnow}/#{mmnow}/#{aanow}"
  return fechaauto
end

def rand_anio
  anioauto=rand(1950..2019)
  return anioauto
end

def esbisiesto?(anioauto)
  if(((anioauto%4==0) and (anioauto%100!=0) or (anioauto%400==0)))
    return true
  else
    return false
  end
end

def rand_meses
  mesauto=rand(1..12)
  if(mesauto<10)
    mesauto="0#{mesauto}"
  end
  return mesauto
end

def rand_dia(mesauto,anioauto)
  begin
    diaauto=rand(1..31)
    enc=false
    case(mesauto==2)
    when((diaauto==29) and ((esbisiesto?(anioauto)==true)))
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
  return diaauto
end

#main
fechaauto=fechaautomatica
puts"#{fechaauto}"

anticierre=gets.chomp