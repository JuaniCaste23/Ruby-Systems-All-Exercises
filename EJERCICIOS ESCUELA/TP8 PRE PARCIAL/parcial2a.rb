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

arch=File.new("./parcial2a.dat","w")

importes=Cola.new

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
    renglon = nom + " " + impo.to_s
    arch.puts(renglon)     
end until (colanombres.colavacia?()==true)
arch.close

arch=File.new("./parcial2a.dat","r")

begin
     importes.servicio
     renglon=arch.gets.chomp
     cal=rand(2)
     if cal==0
        calif="APTO"
     else
        calif = "NO APTO"
     end
     puts renglon + calif
end until (importes.colavacia?()==true)
arch.close

end

examen

