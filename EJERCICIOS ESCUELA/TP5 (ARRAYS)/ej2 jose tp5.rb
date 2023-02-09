def diferencia(a,b)
    # - Diferencia: Retorna un Nuevo array que contiene elementos que están en el primer vector pero no en el segundo.
    diferencia_ruby = a - b 
    print "#{diferencia_ruby}"
end

def interseccion(a,b)
    # & Intersección: Crea un Nuevo array desde 2 existentes arrays conteniendo solo los elementos comunes a ambos arrays. Los duplicados son removidos. 
    diferencia_ruby = a & b
    print "\n\n#{diferencia_ruby}"
end

def union(a,b)
    # | Unión: Concatena 2 arrays. Duplicados son removidos."
    diferencia_ruby = a | b 
    print "\n\n#{diferencia_ruby}"
end

#main 
system('clear')
op_sys = ["Fedora", "SuSE", "Tuquito", "Windows", "MacOS"]
linux_sys = ["Tuquito", "SuSE", "PCLinuxOS", "Ubuntu", "Fedora"]

diferencia(op_sys,linux_sys)
interseccion(op_sys,linux_sys)
union(op_sys,linux_sys)