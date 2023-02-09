#Leer dos valores e imprimir el mayor. Si son iguales, imprimir cualquiera de ellos.

def calcular(a,b)
    mensaje=""
    puts"Se leeran los valores:\nValor A: #{a}\nValor B: #{b}\n\n"
    case 
    when (a>b)
        mensaje="El Valor A: #{a}, es mayor que el Valor B: #{b}"
    when (a<b)
        mensaje="El Valor B: #{b}, es mayor que el Valor A: #{a}"
    else
        mensaje="Ambos valores son iguales --> #{a}"
    end
    return mensaje
end

#main
system('cls')
valora=rand(1..100) ; valorb=rand(1..100)
imprimir=calcular(valora,valorb)
puts"#{imprimir}"

anticierre=gets.chomp