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

def condicion_b(contraseña)
    if((65..90)===contraseña[0].ord)
        return true
    else
        puts"--> La contraseña debe comenzar con una letra mayuscula."
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
    cont=0
    for i in 0..contraseña.length-1
        if((48..57)===contraseña[i].ord)
            cont=cont+1
        end
    end
    if(cont==3)
        return true
    else
       puts"--> La contraseña debe contener si o si 3 números."
       return false
    end
end

def condicion_e(contraseña,letra_1,letra_2,letra_3,letra_4)
    cont1=0 ; cont2=0 ; cont3=0 ; cont4=0
    for i in 0..contraseña.length-1
        case
        when(contraseña[i]==letra_1)
            cont1=cont1 + 1
        when(contraseña[i]==letra_2)
            cont2=cont2 + 1
        when(contraseña[i]==letra_3)
            cont3=cont3 + 1
        when(contraseña[i]==letra_4)
            cont4=cont4 + 1
        end
    end
    case
    when(cont1==0 or cont2==0 or cont3==0 or cont4==0)
        puts"--> Las letras (#{letra_1} #{letra_2} #{letra_3} #{letra_4}) deben existir todas en la contraseña."
        return false
    when(cont1>1 or cont2>1 or cont3>1 or cont4>1)
        puts"--> Las letras (#{letra_1} #{letra_2} #{letra_3} #{letra_4}) no se deben repetir."
        return false
    end
    return true   
end

#main
system('clear')
letra_1=rand(97..122).chr ; letra_2=rand(97..122).chr ; letra_3=rand(97..122).chr ; letra_4=rand(97..122).chr
begin
    pass=ingresar_contraseña
    a=condicion_a(pass)
    b=condicion_b(pass)
    c=condicion_c(pass)
    d=condicion_d(pass)
    e=condicion_e(pass,letra_1,letra_2,letra_3,letra_4)
end until((a==true) and (b==true) and (c==true) and (d==true) and (e==true))
puts"La contraseña ingresada #{pass} cumple todas las condiciones."

anticierre=gets.chomp