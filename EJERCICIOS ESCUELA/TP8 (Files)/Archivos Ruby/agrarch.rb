
# incorporar informacion al archivo

f=File.new("c:/datos1.dat","a")

puts "ingrese dni "
dni = gets.chomp
puts "ingrese apellido y nombres "
ape = gets.chomp
puts "ingrese sueldo "
sueldo = gets.chomp

lape = 17 - (ape.length)
ape = ape + (" " * lape)

renglon = dni+ape+sueldo
f.puts(renglon)
f.close







