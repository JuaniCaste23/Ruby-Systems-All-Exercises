def metodo_reverse(colores)
  puts"\nMetodo reverse: "
  i=colores.reverse
  puts"#{i}"
  puts
end

def metodo_tradicional(colores)
  coloresinverso=[]
  i=colores.length-1
  j=0
  puts"Metodo tradicional: "
  begin
    coloresinverso[j]=colores[i]
    j=j+1
    i=i-1
  end until(i<0) 
  puts"#{coloresinverso}"
end

#main
colores=["rojo", "verde", "azul", "negro", "celeste", "blanco"] 
puts"\nColores: #{colores}"
metodo_reverse(colores)
metodo_tradicional(colores)
print"\nFín del Programa."

anticierre=gets.chomp



