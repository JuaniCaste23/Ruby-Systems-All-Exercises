def ingresar
 a=gets.chomp
end

def contiene(a,t="b")
 largo=a.length
 i=0
 begin
   if(a[i]==t)
     enc=true
   end
   i=i+1
 end until(i==largo) 
 return enc
end

#main
pal=ingresar()
if contiene(pal,"b")
   puts"si"
else
   puts"no"
end