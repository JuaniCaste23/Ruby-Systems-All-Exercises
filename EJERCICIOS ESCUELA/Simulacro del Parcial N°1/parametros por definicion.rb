def cuentas
    n1=gets.chomp.to_i
    n2=gets.chomp.to_i
    return n1
    return n2
end

def sumar(n1,n2=5)
    resultado=n1+n2
    return resultado
end

total=sumar(1)-->solo le asigne un parametro, por ende sumaria 1 + 5, 
pero si le asigno un parametro "n2" y el resultado es distinto, sumaria ese valor.

print"resultado #{sumar}"