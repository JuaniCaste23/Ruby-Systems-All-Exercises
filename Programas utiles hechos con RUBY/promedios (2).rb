class Promedios
    def initialize()
        @calificaciones=Hash.new
    end

    def main
        begin
            begin
             mat=ingresar
             mod1=mayus(mat)
             mod2=igual(mat)
            end until()
            asignar(mat)
            con=control
        end until(control==true)
        calcular(cal)
    end

    def ingresar
        puts"-------------PROGRAMA DE PROMEDIOS-------------\n\n"
        print"Ingrese su Materia: "
        materia=gets.chomp
        return materia
    end
           

    def mayus(materia)
        for i in 0..materia.size-1
            if(materia[i].ord===(97..122))
                cont=cont+1
            end
        end
        if(cont>=1)
            puts"Debe ingresar las materias en MAYUSCULAS"
            return false
        else
            return true
        end
    end

    def igual(materia)
        @calificaciones.each do |mater,valor|
            if(mater==materia)
               puts"Debe ingresar una materia que no fue ingresada previamente."
               return false
            end
        end
        return true
    end

    def asignar(materia)
        print"Ingrese la nota de la materia ingresada: "
        nota=gets.chomp.to_f
        @calificaciones[materia]=nota
        return @calificaciones
    end

    def control
        print"Desea ingresar otra materia? (s/n): "
        control=gets.chomp
        system('clear')
        if(control=="No" or control=="N" or control=="n" or control=="NO")
            return false
        else
            return true
        end
    end
    
    def calcular(calificaciones)
      #ciclo each que te muestra el promedio
      suma=0 ; promedio=0
      #each vendria a ser un for sin subindice..
      puts"MATERIAS INGRESADAS\n"
      puts"-------------------------------------------------------"
      @calificaciones.each do |materia,nota|
        puts"--> #{materia} = #{nota}"
        suma= suma + nota.to_i
      end
      promedio= suma.to_f / @calificaciones.length #o size, que es lo mismo que length.
      puts"\nEl promedio de tus calificaciones es: #{promedio.round(2)}"
      puts"-------------------------------------------------------"
    end
end

#main
system('clear')
promedios=Promedios.new
promedios.main

anticierre=gets.chomp