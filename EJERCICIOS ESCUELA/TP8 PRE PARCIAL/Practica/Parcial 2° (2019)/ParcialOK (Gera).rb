class Cola
    def initialize
        @c=Array.new        
    end
    def agregar(elem)
        @c.push(elem)
    end
    def darservicio
        @c.delete_at(0) #Elimina el primer elemento ingresado al array
    end
    def cola_vacia?
        if (@c.length == 0)
            return true
        else
            return false
        end
    end
    def mostrarcola
        i=0
        begin
            puts "#{@c[i]}"
            i+=1
        end until (i>@c.length-1)
    end

    def cantidad
        return @c.length-1
    end
end

def azar()
    #n = rand(13)+7
    n = rand(7..20)
end

def formato(cadena,espacio)
    cad = cadena+" "*(espacio - cadena.length)    
end

def menu(lista,servicio)
    begin
        system('clear')
        puts "1. Cargar cola"
        puts "2. Listar cola"
        puts "3. Dar servicio"
        puts "4. Salir"
        print "Opcion: "
        opt = gets.chomp.to_i

        if (opt < 1 or opt > 4)
            print "Debe ingresar una opcion valida!"
            gets
        end
    end until (opt >= 1 and opt <= 5)
    case opt
        when 1 
            system('clear')
                nombre = ["Gera","Nachin","Juani","Gena","Jose","Joaquin","Inaki","Gino","Agustin","Sarni","Frida","Tito","Panchi","Tibu","Gustavo","Silvia","Gabriel","Dario","Leandro","Cristina"]  
                if lista.cola_vacia?
                    for i in 0..azar()
                        lista.agregar(nombre[i])
                    end
                    print "Cola cargada con exito! "
                    gets
                else
                    print "Ya ha sido cargada! "
                    gets
                end
        when 2
            system('clear')
            if !lista.cola_vacia?
                lista.mostrarcola()
            else
                print "No hay elementos a mostrar"
            end
            gets
        when 3
            system('clear')
            importe = [10,100,1000]
            aptitud = ["APTO","NO APTO"]
            for i in 0..lista.cantidad()
                id = lista.darservicio()
                formateado = "#{formato(id,15)}$#{importe[rand(3)].to_s}"
                servicio.agregar(formateado)
            end
            for i in 0..servicio.cantidad()
                id = servicio.darservicio()
                formateado = "#{formato(id,30)}#{aptitud[rand(2)].to_s}"
                puts formateado
            end
            gets
        when 4
            return 4
    end
end


lista = Cola.new
servicio = Cola.new

a=0
while a!= 4
    a = menu(lista,servicio)
end