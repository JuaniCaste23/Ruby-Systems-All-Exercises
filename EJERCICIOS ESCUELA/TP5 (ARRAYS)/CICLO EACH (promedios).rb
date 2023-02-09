def ingresar
    calificaciones=Hash.new ; enc=true
    begin
      puts"-------------PROGRAMA DE PROMEDIOS-------------\n\n"
      begin
        print"Ingrese su Materia: "
        materia=gets.chomp
        calificaciones.each do |mater,valor|
            if(mater==materia)
               enc=false
            end
        end
        if(enc==false)
           puts"Debe ingresar una materia que no fue ingresada previamente."
           enc=0
        else
            enc=true
        end
      end until(enc==true)
      print"Ingrese la nota de la materia ingresada: "
      nota=gets.chomp.to_f
      calificaciones[materia]=nota
      print"Desea ingresar otra materia? (s/n): "
      control=gets.chomp
      system('clear')
    end until(control=="No" or control=="N" or control=="n" or control=="NO")
    return calificaciones
end

def calcular(calificaciones)
  #ciclo each que te muestra el promedio
  suma=0
  #each vendria a ser un for sin subindice..
  puts"MATERIAS INGRESADAS\n"
  puts"-------------------------------------------------------"
  calificaciones.each do |materia,nota|
    puts"--> #{materia} = #{nota}"
    suma= suma + nota.to_i
  end
  promedio= suma.to_f / calificaciones.length #o size, que es lo mismo que length.
  puts"\nEl promedio de tus calificaciones es: #{promedio.round(2)}"
  puts"-------------------------------------------------------"
end

#main
system('clear')
hash=ingresar
promedio=calcular(hash)
print"\nFín del Programa."

anticierre=gets.chomp