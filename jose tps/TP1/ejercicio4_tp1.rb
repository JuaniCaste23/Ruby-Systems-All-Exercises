#Realizar un diagrama que permita ingresar los importes de las facturas que emite un comercio y al finalizar el ingreso informe:
#--> La cantidad de facturas emitidas
#--> El importe total recaudado

def ingreso_facturas(facturas_emitidas)
    facturas=Hash.new ; cont=1
    puts"El comercio emitio #{facturas_emitidas} facturas. Ahora debe asignarle un importe a cada una.\n"
    begin
        print"Ingrese el Importe de la factura #{cont}: $ "
        importe=gets.chomp.to_i
        facturas[cont]=importe #CLAVE: facturas[cont] Y VALOR: Importe
        cont=cont+1
    end until(cont>facturas_emitidas)
    return facturas
end

def lectura(facturas)
    puts"\nFacturas con su importe asignado:"
    facturas.each do |clave,valor|
        puts"Factura #{clave}: Importe $ #{valor}"
    end
end

def calcular(facturas)
    total=0 
    facturas.each do |clave,valor|
        total=total + valor
    end
    return total
end

#main
system('cls')
emitidas=rand(1..10)
fact=ingreso_facturas(emitidas)
lectura(fact)
imprimir=calcular(fact)
puts"\nLa cantidad de facturas emitidas: #{emitidas}\nEl Importe Total de todas las facturas: $ #{imprimir}"

anticierre=gets.chomp