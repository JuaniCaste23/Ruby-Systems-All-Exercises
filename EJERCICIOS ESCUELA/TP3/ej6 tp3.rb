def  ingresarnumero_real()
      print "Ingrese un numero real: "
      num=gets.chomp.to_f
      return num 
end

def formatear(num,enteros,decimales)
    parte_ent = num.to_i
    valor=10**decimales
    parte_dec = ((num - parte_ent) * valor).to_i 
    #puts parteent
    #puts partedec
    formaent = ("0" * (enteros - parte_ent.to_s.length)) + parte_ent.to_s
    #puts formaent
    formadec = parte_dec.to_s + ("0" * (decimales - parte_dec.to_s.length))
    #puts formadec
    salida = formaent + "." + formadec
    return salida
end

#main
numr=ingresarnumero_real
salida=formatear(numr,7,2)
puts "#{salida}"

anticierre=gets.chomp