arch2=File.new("./numeros.dat","r")
ganadores=0
begin
     renglon=arch2.gets.chomp
     enc = false
	 i= 0 
	 num= ""
	 cont = 0
	 begin
	   enc = false 
	   if renglon[i] != ","
	      num= num + renglon [i]
		  i=i+1 
       else
	      if num == "9" or num == "14" or num == "17" or num == "28" or num == "33" or num == "41"
	        cont = cont +1			
     	  end
          i=i+1
		  num= ""
	   end 
	end until (i==renglon.length-1)		
     if (cont == 6)
           ganadores = ganadores +1 
     end
end until (arch2.eof()==true)
arch2.close
puts "la cantidad de ganadores es #{ganadores}"


#hacer de cuenta que los numeros de figuritas que venian en cada sobre de a 6. Decir cuales son las figuritas mas dificiles
# ( las que no aparecen o aparecen poco) . el quini son del 0 al 15.