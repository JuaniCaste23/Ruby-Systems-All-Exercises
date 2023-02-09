def calcular(nombre) 
  random=rand(nombre.length)
  if(random<=2)
    valor=3
  else
    valor=random
  end
  return valor
end

def imprimir(nombre,valor=5)
  for i in 0..valor
    print nombre[i]
  end
end

#main
nombre="MURCIELAGO"
anto=calcular(nombre)
print"El perro de Anto se llama "
imprimir(nombre,anto)