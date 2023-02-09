puts"Escriba un programa que permita ingresar una contraseña que debe cumplir las siguientes pautas, 
si las pautas no se cumplen, se debe solicitar su ingreso nuevamente, informando la falla.
a) Debe tener más de seis caracteres y menos de veinte.
b) Debe comenzar con una letra (a..z)
c) No se permiten espacios en blanco
d) Debe poseer al menos un número (0..9)"

def ingresar_contraseña
    print"Ingrese la contraseña: "
    contraseña=gets.chomp
    return contraseña
end

def condicion_a(contraseña)
    if((contraseña.length>6) and (contraseña.length<20))
        return true
    else
        puts"--> La contraseña debe tener más de 6 caracteres y menos de 20"
        return false
    end
end

def condicion_b(contraseña)#letras minusculas (97..122)
    if((97..122)===contraseña[0].ord)
        return true
    else
        puts"--> La contraseña debe comenzar con una letra minúscula."
        return false
    end
end

def condicion_c(contraseña)
    for i in 0..contraseña.length-1
        if(contraseña[i]==(" "))
            puts"--> La contraseña no debe tener espacios en blanco."
            return false
        end
    end
    return true
end

def condicion_d(contraseña) #numeros (48..57)
    for i in 0..contraseña.length-1
        if((48..57)===contraseña[i].ord)
            return true
        end
    end
    puts"--> La contraseña debe contener mínimo un número."
    return false
end

#main
system('clear')
begin
    pass=ingresar_contraseña
    a=condicion_a(pass)
    b=condicion_b(pass)
    c=condicion_c(pass)
    d=condicion_d(pass)
end until((a==true) and (b==true) and (c==true) and (d==true))
puts"La contraseña ingresada #{pass} cumple todas las condiciones."

anticierre=gets.chomp

#ascii letras mayusculas (65..90) /letras minusculas (97..122) /numeros (48..57)