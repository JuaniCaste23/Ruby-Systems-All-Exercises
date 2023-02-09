class Cola 
    def initialize(nombres)
      @hash=nombres
      @colanueva=Array.new
      @aux=Array.new
    end

    def cola_azar
      cont=0 ; fin=rand(0..10) ; colarand=Array.new
      begin
        num=(rand(1..11)).to_s
          @hash.each do |clave,valor|
            if(clave==num)
              colarand.push(valor)
              @aux.push(clave.to_i)
            end
          end
          cont=cont+1
        end until(cont==fin)
        puts"Seran atendidas las personas en el siguiente orden(COLA):"
        puts"#{colarand}"
        return @aux
    end

    def cola_nueva #arreglar para que te ordene de menor a mayor los nombres de suss posiciones.
      i=0
    begin
      @hash.each do |clave,valor|
        if(clave.to_i==@aux[i])
          @colanueva.push(valor)
        end
      end
      i=i+1
    end until(i==@aux.size)
      puts "\n\n#{@colanueva}"
      return @colanueva
    end
end

#main
nombres={"1"=>"Pato", "2"=>"Cata", "3"=>"Fabra", "4"=>"Ibarra", "5"=>"Gago", "6"=>"Schiavi", "7"=>"Guille", "8"=>"Paredes", 
"9"=>"Palermo", "10"=>"Riquelme", "11"=>"Maxi"}
cola=Cola.new(nombres)
cola.cola_azar
cola.cola_nueva