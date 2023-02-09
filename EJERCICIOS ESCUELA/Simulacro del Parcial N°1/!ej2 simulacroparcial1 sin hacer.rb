def anto(anto3,encontrar) 
  anto2=rand(anto3.length)
  if(anto2<=2)
    tmz=3
  else
    tmz=anto2
  end
  return tmz
end

def perro(anto,mostrar=5)
  encontrar=0
  for i in 0..mostrar
    print anto[i]
  end
end

#main
anto1="MURCIELAGO"
anto2=anto(anto1,true)
print"El perro de Anto se llama "
perro(anto1,anto2)