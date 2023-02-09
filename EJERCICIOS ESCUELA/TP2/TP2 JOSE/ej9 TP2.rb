puts"Cree un programa que permita ingresar una palabra de másde 4 letras sin espacios. 
Ademásdebe conteneruna funciónllamada “palíndromo?”. 
Un palíndromoes una palabra que se lee igual tanto desde izq. a der.como de der. aizq.
(también se las llaman capicúa, p.ej. “neuquen”).
La función debe retornar true o false."

def ingresar_palabra
    enc=true ; i=0
    begin
      print"Ingrese una palabra sin espacios y com más de 4 lentras: "
      palabra=gets.chomp.to_s
      begin
          if(palabra[i]==(" "))
            puts"-No debe tener espacios en blanco."
            enc=false
          end
          i=i+1
        end until(i==palabra.length)
        if(i==palabra.length)
           enc=true
        end
        if(palabra.length<5)
            puts"-Debe tener más de 4 letras."
            enc=false
        else
            enc=true
        end
    end until(enc==true)
    return palabra
end

def palindromo(palabra)
    i=0 ; aux="" ; enc=true
    begin
        aux=aux + palabra[i]
        i=i+1
    end until(i==palabra.length)
    if(aux==palabra)
       enc=true
    else
        enc=false
    end
    return enc,aux
end

#main
system('clear')
cad=ingresar_palabra
enc,imprimir=palindromo(cad)
if(enc==true)
   puts"La #{cad} es un palindromo--> #{imprimir}"
else
    puts"No es un palindromo."
end

anticierre=gets.chomp