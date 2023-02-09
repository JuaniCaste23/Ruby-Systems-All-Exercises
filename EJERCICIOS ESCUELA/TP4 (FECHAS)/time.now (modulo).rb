
def calcular
    t=Time.now
    puts
    puts "Time Now #{t}"
    time=t.to_s
end

def calcular2(time)
    aanow=time[0..3].to_i ; mmnow=time[5..6].to_i ; ddnow=time[8..9].to_i
    horas=time[11..12] ; minutos=time[14..15] ; segundos=time[17..18]
    meridiano=time[20..24]
    puts"Fecha sola del time now:"
    puts"#{ddnow}/#{mmnow}/#{aanow}"
    puts"Hora sola del time now:"
    puts"#{horas}:#{minutos}:#{segundos}"
    puts"Meridiano:"
    puts"#{meridiano}"
end

#main
cad=calcular
calcular2(cad)

anticierre=gets.chomp
