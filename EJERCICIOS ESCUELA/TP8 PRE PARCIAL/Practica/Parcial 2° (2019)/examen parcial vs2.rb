#####FALTA ARREGLAR EL CONTROL DEL MAIN

class Cola 
    def initialize(nombres)
      @nombres=nombres
      @cola=Array.new
      @fin = rand(6..19)
    end

    def agregar
        i=0
        begin
            @cola.push(@nombres[i])
            i=i+1
        end until(i==@fin)
        system('cls')
        puts"--> Cola cargada\n\n"
        return @cola
    end

    def listar
        system('cls')
        puts"-----------------------------------------------------"
        puts"-Las personas que seran atendidas son:\n\n"
        for i in 0..@cola.size-1
          print "#{@cola[i]} "
        end
        print"\n\n"
    end
end

class Servicio < Cola #Serviciohereda la cola cargada
    def initialize(nombres)
        @servido=Array.new
        @clasif=Array.new
        super(nombres)
    end

    def servicio
        importe=["$10","$100","$1000"] ; i=0 #asigno los elementos de cola a un arreglo llamado servido con los importes al azar
        begin
          j=rand(0..2)
          elem=@cola.shift
          @servido.push([elem,importe[j]]) #aca se hace la asignacion
          i=i+1
        end until(i==@fin)
        return @servido
    end

    def asignar_apto #uso el indice como relacion entre el arreglo servido y el arreglo clasificacion
        c=["APTO","NO APTO"]
        for i in 0..@servido.size
            j=rand(0..1) 
            @clasif.push(c[j])
        end
        system('cls')
        puts"--> Servicios clasificados\n\n"
        return @clasif
    end

    def imprimir
        system('cls')
          puts"-Las personas fueron atendidas y se les ha asignado un importe y una clasificacion.\n\n"
          puts"NOMBRE\t\t\tIMPORTE\t\t\tCLASIFICACION"
           for i in 0..@fin-1
              puts"#{@servido[i][0]}\t\t\t#{@servido[i][1]}\t\t\t#{@clasif[i]}"
           end
        puts"-----------------------------------------------------"
    end
end

def examen(nombres)
  cola=Servicio.new(nombres) ; cont1=0 ; cont2=0 ; cont3=0
  begin
    print"1.Cargar cola\n2.Mostrar cola\n3.Darle Servicio\n4.Imprimir el resultado\nEliga una opcion (Solo puede cargar una opcion por vez y en orden jerarquico): "
    opcion=gets.chomp.to_i
    case 
    when (opcion==1) && (cont1==0)
      cont1=cont1+1
      cola.agregar
    when (opcion==2) && (cont1==1) && (cont2==0)
      cont2=cont2+1
      cola.listar
    when (opcion==3) && (cont2==1) && (cont3==0)
      cont3=cont3+1
      cola.servicio
      cola.asignar_apto
    when(opcion==4) && (cont3==1)
      cola.imprimir
    else
      system('cls')
      puts"Ingrese una opcion valida"
    end
  end until(opcion==4) and (cont3==1)
end

#main
system('cls')
nombres=["Santi","Roman","Joaq","Cristi","Esteban","Gera","Juani","Gino","Ignacio","Jose","Sol","Abril","Quiara","Seba","Franco","Moni","Iñaki","Carlos","Daniela","Lucia"]
examen(nombres)
print"\nFín del programa."

anticierre=gets.chomp