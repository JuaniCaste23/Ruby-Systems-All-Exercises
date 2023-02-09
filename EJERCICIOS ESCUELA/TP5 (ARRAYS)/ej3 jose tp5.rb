def azar
    array=Array.new
    for i in 0..99
        array.push(rand(-999..-1))
        #array[i]=rand(-999..-1) metodo sin push
    end
    print "Arreglo original: #{array}"
    return array
end

def unique(array)
    #metodo uniq: Remueve los elementos duplicados de un arreglo.
    aux=array.uniq
    print "\n\nArreglo con uniq: #{aux}"
end

#main
system('cls')
array=azar
unique(array)