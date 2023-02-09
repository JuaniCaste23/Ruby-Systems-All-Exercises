def controlar
    puts"------------------------------------------"
    puts"Bienvenido al programa que calcula IVA"
    puts"------------------------------------------\n"
    print"-Si desea ingresar un sueldo con iva pulse SI.\n-Si desea ingresar un sueldo sin iva pulse NO.\n"
    print"-->Seleccione un SI/NO: "
    sn=gets.chomp
    return sn
end

def ingrese_sueldo_con_iva(sn)
   enc=false
   system('cls') 
   if((sn=="NO") or (sn=="No") or (sn=="no") or (sn=="n"))
     print"Ingrese un sueldo sin iva: "
     sueldo=gets.chomp.to_i
     print"Ingrese una tasa iva: "
     iva=gets.chomp.to_f
   else
      if((sn=="SI") or (sn=="Si") or (sn=="si") or (sn=="s"))
        print"Ingrese un sueldo con iva: "
        sueldo=gets.chomp.to_i
        print"Ingrese la tasa iva del sueldo: "
        iva=gets.chomp.to_f
        enc=true
      end
    end
    print"\n"
    return sueldo,iva,enc 
end

def calcular(sueldo,iva,enc)
  valoriva="1.#{iva}" ; valorsiniva="0.#{iva}" ; cuentafinal=0 ; cuenta=0
  if(enc==true)
    cuenta = sueldo / valoriva.to_f
    puts"-El sueldo sin el iva es: #{cuenta.round(2)}\n"
    cuentafinal = cuenta * valorsiniva.to_f
    puts"-El valor iva del sueldo es: #{cuentafinal.round(2)}"
  else
    cuenta = sueldo * valorsiniva.to_f
    puts"-El valor iva #{iva}% que sera asignado es: #{cuenta.round(2)}"
    cuentafinal = cuenta + sueldo
    puts"-El sueldo con el iva asignado es: #{cuentafinal}"
  end
end

#main
system('cls') 
control=controlar
sueldo,iva,enc=ingrese_sueldo_con_iva(control)
calcular(sueldo,iva,enc)
print"\nFín del Programa."

anticierre=gets.chomp