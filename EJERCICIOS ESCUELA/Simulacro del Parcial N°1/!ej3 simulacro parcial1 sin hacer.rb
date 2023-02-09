def ingresar
 a=gets.chomp.to_i
end

def contiene(x,t="a")
 largo=t.length
 i=0
 begin
   if(x[i]==t)
     enc=true
   else
     enc=false
   end
   i=i+1
 end until(i>largo-1)
 return enc
end

#main
pal=ingresar()
if contiene(pal,"b")
   puts"si"
else
   puts"no"
end