def hash_fibonacci #(0+1=1 / 1+1=2 / 1+2=3 / 2+3=5 / 3+5=8 / 5+8=13 / 8+13=21 / 13+21=34...)
    system('cls')
    h=Hash.new ; n1=0 ; n2=1 ; suma=0 ; cont=0
    begin
      h[cont]=suma
      suma=n1+n2
      n1=n2
      n2=suma
      cont=cont+1
    end until(cont==101)
    puts"Hash con serie de Fibonacci con 100 elementos:"
    h.each do |clave,valor|
      print"\r#{clave} => #{valor}" ;sleep 0.5
    end
end

#main
hash_fibonacci
print"\nFín del Programa."

anticierre=gets.chomp