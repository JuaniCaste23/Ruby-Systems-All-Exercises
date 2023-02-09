def ingresar #en vez de usar 3 hashes, solo utilize uno para guardar todo.
  hash=Hash.new 
  for cont in 0..9
    system('cls')
    puts"-Ingrese el nombre de mascota, su dosis diaria, alimento y racion:"
    print"Nombre de la mascota: "
    nombre=gets.chomp
    print"Dosis(en gm): "
    dosis=gets.chomp.to_f
    print"Alimento: "
    alimento=gets.chomp
    print"Racion diaria: "
    racion=gets.chomp
    hash[nombre]=Array.new.push(dosis,alimento,racion)
  end 
  return hash
end

def calcular(hash) 
  print"\nDATOS DE MASCOTAS:\n" #\t --> sirve para tabular. cuantas mas \t, mas espacio.
  puts"-----------------------------------------------"
  puts"NOMBRE\t\t\tDOSIS\t\t\tALIMENTOS\t\t\tRACION Nº\n"#el tabular se descajeta con los caracteres.
    hash.each do |clave,valor|
      print"#{clave}\t\t\t#{valor[0]} grs\t\t\t#{valor[1]}\t\t\t#{valor[2]}\n"
    end
end

#main
hash=ingresar
calcular(hash)
print"\nFín del Programa."

anticierre=gets.chomp