class Cola
def initialize
   @q=Array.new
end	

def agregar(elem)
    @q.push(elem)
end

def servicio
   @q.shift
end

def mostrar
   for i in 0..@q.length-1
      puts @q[i]
   end
end

def colavacia?()
  if (@q.length==0)
   return true 
  else
   return false
  end
end

def existe?(nom)
   if @q.include?(nom)
      return true
   else  
      return false
   end
end
end

def examen

nnn=["ANA","JUAN","PEDRO","LUIS","TERE","CLAUDIO","ENRIQUE","DANTE","PEPE","JOSE","MANUEL","EMA","MARIANO","ANDREA","FELIPE","POROTA","JOSEFA","JUANA","ALBERTO","ELENA"]
begin
   num=rand(20)
end until (num>=7)

colanombres=Cola.new
i=0
begin
    azar=rand(20)
    if (colanombres.existe?(nnn[azar])==false)
       colanombres.agregar(nnn[azar])
       i=i+1 
    end    
end until (i>num)
#colanombres.mostrar

importes=Cola.new
hh=Hash.new
begin
    nom=colanombres.servicio
    iazar=rand(3)
    if iazar==0
       impo=10
    end
    if iazar==1
       impo=100
    end
    if iazar==2
       impo=1000
    end 
    importes.agregar(impo)
    hh[nom]=impo 
end until (colanombres.colavacia?()==true)

ccc=Array.new
begin
     importes.servicio
     cal=rand(2)
     if cal==0
        calif="APTO"
     else
        calif = "NO APTO"
     end
     ccc.push(calif)             
end until (importes.colavacia?()==true)

i=0
hh.each do |nom,imp|  
   puts "#{nom}  #{imp}   #{ccc[i]}"
   i=i+1 
end

end

examen

