class Promedios
    def initialize()
        @calificaciones=Hash.new
        #@@cont=0
    end

    def main
        begin
            puts"-------------PROGRAMA DE PROMEDIOS-------------\n"
            begin
             mat=ingresar
             mod1=mayus(mat)
             mod2=igual(mat)
             #@@cont=@@cont+1
             #if(@@cont==3)
              #  system('clear')
               # @@cont=0
             #end
            end until((mod1==true) and (mod2==true))
            asignar(mat)
            con=control
        end until(con==true)
        calcular
    end

    def ingresar
        print"\nIngrese su Materia: "
        materia=gets.chomp.to_s
        return materia
    end

    def imprimir
        puts"Materias Ingresadas:"
        @calificaciones.each do |materia,nota|
            puts"--> #{materia} = #{nota}"
        end
        puts
    end
           
    def mayus(materia)
        i=0
        if((materia[0]==nil) or ((48..57)===materia[i].ord))
            puts"\n-Debe ingresar una materia, no un ENTER o un Número."
            return false
        end
        begin
            if(((65..90)===materia[i].ord) or ((48..57)===materia[i].ord) or (materia[i]==" "))
                i=i+1
            else
                puts"\n-Debe ingresar las materias en MAYUSCULAS."
                return false
            end
        end until(i==materia.size)
        return true
    end

    def igual(materia)
        @calificaciones.each do |mater,valor|
            if(mater==materia)
               puts"\n-Debe ingresar una materia que no fue ingresada previamente."
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
            return true
        else
            imprimir
            return false
        end
    end
    
    def calcular
      #ciclo each que te muestra el promedio
      suma=0 ; promedio=0
      #each vendria a ser un for sin subindice..
      puts"MATERIAS INGRESADAS:\n"
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
print"\nFín del programa."

anticierre=gets.chomp