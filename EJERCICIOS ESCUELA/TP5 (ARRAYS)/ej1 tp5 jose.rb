puts"Dado un Array a como el siguiente, únalo al Array b formando el Array c. 
Determine la cantidad de elementos del array resultante. Considere 2 alternativas diferentes para realizar este ejercicio"

#arreglo=Array.new | maneras para declarar arreglos en ruby
#arreglo=[]

# size, length --> medis tamañaos de una variable. (arreglos,sumas,strings,etc)

def calcular
    a = ["Lunes", "Martes", "Miércoles"]
    b = ["Jueves", "Viernes", "Sábado", "Domingo"]

    #metodo facil
    c1=Array.new
    c1= a + b
    print "ARREGLO C1: #{c1}"
    puts "\n TAMAÑO: #{c1.size}"

    #metodo dificil
    c2=[] ; cont=0
    for i in 0..a.size-1
        c2.push(a[i])
        cont=cont+1
    end

    i=0
    begin
        c2.push(b[i])
        i=i+1
        cont=cont+1
    end until(i==b.size)
    print "ARREGLO C2: #{c2}"
    puts "\n TAMAÑO:  #{cont}"
end

#main
calcular