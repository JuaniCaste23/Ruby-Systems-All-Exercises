
def calcular
    t=Time.now
    puts "#{t}"
    time=t.to_s
end

def calcular2(time)
    aanow=time[0..3].to_i
    mmnow=time[5..6].to_i
    ddnow=time[8..9].to_i
    puts"Fecha sola del time now:"
    puts"#{ddnow}/#{mmnow}/#{aanow}"
end
#main

c=calcular
calcular2(c)

