def ingresar_nombres
  system('cls')
  array=[] 
  for i in 0..9
    print"Ingrese un nombre: "
    nombre=gets.chomp
    array[i]=nombre
  end 
  puts"-Nombres ingresados:"
  puts"#{array}"
  puts
  return array
end

def convertir_en_mayuscula(array)  
    i=0 ; k=0 ; j=0 ; nom="" ; nn="" ; mayuscula=[]
    begin
        nom=array[i]
        begin
          if((97..122)===nom[j].ord) 
            nn = nn + (nom[j].ord - 32).chr
          else
            nn = nn + nom[j]
          end
          j=j+1
        end until(j==nom.length)
        mayuscula[k]=nn
        nom=""
        nn=""
        j=0
        k=k+1
        i=i+1
    end until(i==array.length)
    puts"-Nombres ingresados convertidos con mayuscula:"
    puts "#{mayuscula}"
    puts
    #65..90 ascii de mayusculas. -32  .chr(muestra caracter) .ord(muestra numero)
    #97..122 ascii de minuscula.
end

def dar_vuelta(array)
  i=0 ; k=0 ; nom="" ; nn="" ; revez=[]
  begin
      nom=array[i]
      j=nom.length-1
      begin
        nn = nn + nom[j]
        j=j-1
      end until(j<0)
      revez[k]=nn
      nom=""
      nn=""
      k=k+1
      i=i+1
  end until(i==array.length)
  puts"-Nombres ingresados escritos al revez:"
  puts "#{revez}"
end

#main
array=ingresar_nombres
convertir_en_mayuscula(array)
dar_vuelta(array)
print"\nFín del Programa."

anticierre=gets.chomp
