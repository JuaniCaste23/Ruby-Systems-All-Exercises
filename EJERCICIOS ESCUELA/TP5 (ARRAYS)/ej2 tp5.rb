def ruby_way(op_sys,linux_sys)
  puts"op_sys:#{op_sys}"
  puts"linux_sys:#{linux_sys}"
  array_1=[] ; array_2=[] ; array_3=[]
  array_1=op_sys - linux_sys
  array_2=op_sys & linux_sys
  array_3=op_sys | linux_sys
  puts
  puts"Métodos Ruby_way: "
  puts"1)Diferencia RW:#{array_1}"
  puts"2)Intersección RW:#{array_2}"
  puts"3)Unión RW:#{array_3}"
  puts
end

def diferencia_tradicional(op_sys,linux_sys)
  array=[]
  j=0 ; k=0 ; cont=0 
  for i in 0..op_sys.length-1
    begin
      if(op_sys[i]==linux_sys[j])
        cont=cont+1
      end
      j=j+1
    end until((j>5) or (cont>0))
    if(j>5)
      array[k]=op_sys[i]
      k=k+1
    end
    j=0
    cont=0
  end 
  puts"Métodos Tradicionales: "
  puts"1)Diferencia TR:#{array}"
end

def interseccion_tradicional(op_sys,linux_sys)
  array=[]
  j=0 ; k=0 ; cont=0 
  for i in 0..op_sys.length-1
    begin
      if(op_sys[i]==linux_sys[j])
        cont=cont+1
      end
      j=j+1
    end until((j>5) or (cont>0))
    if(cont>0)
      array[k]=op_sys[i]
      k=k+1
    end
    j=0
    cont=0
  end
  puts"2)Intersección TR:#{array}"
end

def union_tradicional(op_sys,linux_sys)
  array=[]
  i=0 ; k=0 ; cont=0
  for j in 0..linux_sys.length-1
    begin
      if(op_sys[i]==linux_sys[j])
        cont=cont+1
      end
      i=i+1
    end until(i==5) or (cont==1)
    if(i==5)                          
      array[k]=linux_sys[j]
      k=k+1
    end
    i=0
    cont=0
  end 
  array_sumando=op_sys+array
  puts"3)Unión TR:#{array_sumando}"    
end

#main
op_sys = ["Fedora", "SuSE", "Tuquito", "Windows", "MacOS"] 
linux_sys = ["Tuquito", "SuSE", "PCLinuxOS", "Ubuntu", "Fedora"]
ruby_way(op_sys,linux_sys)
diferencia_tradicional(op_sys,linux_sys)
interseccion_tradicional(op_sys,linux_sys)
union_tradicional(op_sys,linux_sys)
print"\nFín del Programa."

anticierre=gets.chomp

