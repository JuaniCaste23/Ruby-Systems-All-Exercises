def importes_azar
   importes=[] 
   for i in 0..29
      importes[i]=rand(1000..10000)
   end
   return importes
end

def asignar_iva(importes,ivas) 
   sueldos=Hash.new ; valor=0
   for i in 0..importes.length-1
     r=rand(0..3)
     valor=ivas[r]
     sueldos[importes[i]]=valor
   end
   ordenar=sueldos.sort_by { |clave, valor| [ valor, clave ] } #me ordena los valores del hash
   sueldos=ordenar
   puts"-Los importes con el iva asignado son los siguientes:"
   puts"---------------------------------"
   sueldos.each do |clave,valor|
      print"(#{clave} => #{valor}) " 
   end
   return sueldos
end

def calcular(sueldos) 
   resultados=Hash.new ; cuenta=0 ; valor=0 ; i=0
   sueldos.each do |sueldo,iva| #importe % iva
     valor = "1.#{iva}"
     cuenta = (sueldo / valor.to_f)
     resultados[i]=Array.new.push("Iva: #{iva} => Sueldo con iva: #{sueldo.round(2)}")
     i=i+1
     cuenta=0
     valor=0
   end 
   puts"---------------------------------"
   puts"\n-Los importes con el iva aplicado y el iva de indice:"
   puts"---------------------------------"
   resultados.each do |clave,valor|
      if(clave<10)
        print " "
      end
      print "-#{clave}: #{valor}\n"
   end
   puts"---------------------------------"
end

#main 
system('cls')
ivas=["0", "10.5", "21", "27"]
azar=importes_azar
hash=asignar_iva(azar,ivas)
calcular(hash)
print"\nFín del Programa."

anticierre=gets.chomp