def ingresar_cadena
    begin
        print"Ingrese una cadena de mas de 20 caracteres: "
        cadena=gets.chomp.to_s
        if(cadena.length<21)
            puts"La cadena debe contener mas de 20 caracteres."
            enc=false
        else
            enc=true
        end
    end until(enc==true)
    return cadena
end

def calcular(cadena)
    i=0 ; cont_a=0 ; cont_e=0 ; cont_i=0 ; cont_o=0 ; cont_u=0 ; cont_total=0
    begin
        case
        when(cadena[i]=="a" or cadena[i]=="A")
            cont_a= cont_a + 1
        when(cadena[i]=="e" or cadena[i]=="E")
            cont_e= cont_e + 1
        when(cadena[i]=="i" or cadena[i]=="I")
            cont_i= cont_i + 1
        when(cadena[i]=="o" or cadena[i]=="O")
            cont_o= cont_o + 1
        when(cadena[i]=="u" or cadena[i]=="U")
            cont_u= cont_u + 1
        end
        i=i+1
    end until(i==cadena.length)
    cont_total=cont_a + cont_e + cont_i + cont_o + cont_u
    return cont_a,cont_e,cont_i,cont_o,cont_u,cont_total
end

#main
system('clear')
cad=ingresar_cadena
cont_a,cont_e,cont_i,cont_o,cont_u,cont_total=calcular(cad)
puts"Las vocales de la cadena: #{cad} son: \n-A: #{cont_a}\n-E: #{cont_e}\n-I: #{cont_i}\n-O: #{cont_o}\n-U: #{cont_u}\n-Total: #{cont_total} vocales"

anticierre=gets.chomp