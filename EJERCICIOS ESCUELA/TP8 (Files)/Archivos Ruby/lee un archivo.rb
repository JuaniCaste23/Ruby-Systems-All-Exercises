

arch=File.new("C:/Users/NetBialet/Desktop/jose.DAT","w")

arch.puts("monica")
arch.puts("juan")
arch.puts("jose")
arch.puts("manuel")

arch.close

arch=File.new("C:/Users/NetBialet/Desktop/nombres2.DAT","r")

begin
  renglon=arch.gets
  puts renglon
end until(arch.eof()==true)

arch.close

#lee un archivo. con el "r".