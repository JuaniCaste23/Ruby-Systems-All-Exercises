class Cola 
    def initialize(nombres)
      @nombres=nombres
      @cola=Array.new
      @h=Hash.new
      @fin = rand(6..19)
    end

    def azar
        i=0
        begin
            @cola.push(@nombres[i])
            i=i+1
        end until(i==@fin)
        #print @cola
        return @cola
    end

    def servicio
        importe=["$10","$100","$1000"] ; i=0 ; espacios= ""
        begin
          j=rand(0..2)
          if(@cola[i].size<10)
            espacios="\t\t"
          else
            espacios="\t\t\t"
          end
          @h["#{@cola[i]}#{espacios}#{importe[j]}"] = ""
          i=i+1
        end until(i==@fin)
        #print @h
        return @cola
    end

    def asignar_apto
        clasif=["APTO","NO APTO"]
        @h.each do |clave,valor|
            i=rand(0..1)
            valor=clasif[i]
            @h[clave]="\t\t#{valor}"
        end
        #print @h
        return @h

    end

    def imprimir
        @h.each do |clave,valor|
           puts"#{clave} #{valor}"
        end
    end
end

#main
nombres=["Flor","Messi","Roman","Cristi","Esteban","Eduardo","Juan","Gino","Ignacio","Jose","Sol","Abril","Quiara","Seba","Franco","Moni","Pepito","Carlos","Daniela","Juana"]
cola=Cola.new(nombres)

cola.azar
cola.servicio
cola.asignar_apto
cola.imprimir