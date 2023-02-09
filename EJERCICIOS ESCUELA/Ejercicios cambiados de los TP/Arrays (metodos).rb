a=[nil,3,nil,7,nil]
a.compact!
puts "Compacta los nil, solo te muestra los valores reales"
print a
puts

a=[5,3,7]
b=[5,1]
a= a + b
puts "Sumo dos vectores a + b"
print a
puts

a=[5,5,5,5,5,5,5,5,5,5,5,9,4,5,5,5,4,4,4,4,8]
a.uniq!
puts "Borra los valores repetidos"
print a
puts

array = [1, "Pedro", true, false, "Juan"]
puts"Metodo each, te imprime todo el vector sin comas"
array.each do |element|
  print element
end

