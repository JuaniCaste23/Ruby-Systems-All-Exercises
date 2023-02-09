class Control
  def initialize
    @control=controlar
  end
  attr_accessor :control #ingresar una opcion por afuera
  
  private
  def controlar
    enc=false ; control=" "
    puts"------------------------------------------"
    puts"Bienvenido al programa que calcula IVA y Descuentos"
    puts"------------------------------------------\n"
    begin
      puts"Seleccione una de las siguientes opciones:\n\n1)Ingresar valor con IVA\n2)Ingresar valor sin IVA\n3)Ingresar valor con descuento\n4)Ingresar valor sin descuento"
      print"--> Seleccione una opción: "
      control=gets.chomp.to_i
      if((control==0) or (control > 4))
        system('clear')
        puts"-Debe ingresar un número válido para una opción válida!\n\n"
        enc=false
      else
        enc=true
      end
    end until(enc==true)
    return control
  end
end

class Auxiliar < Control
  def initialize
    super 
    @tasa=tasa
  end

  def main
    case
    when(@control==1)
      ingrese_valor_con_iva
    when(@control==2)
      ingrese_valor_sin_iva
    when(@control==3)
      ingrese_valor_con_descuento
    when(@control==4)
      ingrese_valor_sin_descuento
    end
  end

  def tasa
    enc=false ; iva=["10.5","21"] ; desc=0
    begin
      if(@control==1 or @control==2)
        print"Ingrese una tasa IVA [10.5 o 21]: "
        @tasa=gets.chomp.to_f
        if((@tasa==iva[0].to_f) or (@tasa==iva[1].to_i))
          enc=true
        else
         system('clear')
         puts"Debe ingresar una tasa IVA válida."
         enc=false
        end
      else
        print"Ingrese una tasa de Descuento: "
        @tasa=gets.chomp.to_f
        if((@tasa>0) and (@tasa < 100))
          enc=true
        else
          system('clear')
          puts"Debe ingresar una tasa de Descuento válida (Mayor que 0 y Menor que 100)"
          enc=false
        end
      end
    end until(enc==true)
    return @tasa
  end

  def ingrese_valor_con_iva
    valor=0 ; valoriva="1.#{@tasa}" ; valorsiniva="0.#{@tasa}" ; cuenta=0 ; cuentafinal=0
    print"Ingrese un valor sin IVA: "
    valor=gets.chomp.to_f
    cuenta = valor / valoriva.to_f
    system('clear')
    puts"-El valor sin el IVA es: #{cuenta.round(2)}\n"
    cuentafinal = cuenta * valorsiniva.to_f
    puts"-El valor IVA del valor ingresado es: #{cuentafinal.round(2)}"
  end

  def ingrese_valor_sin_iva
    valor=0 ; valorsiniva="0.#{@tasa}" ; cuenta=0 ; cuentafinal=0
    print"Ingrese un valor con IVA: "
    valor=gets.chomp.to_f
    cuenta = valor * valorsiniva.to_f
    system('clear')
    puts"-El valor IVA de #{@tasa}% que sera asignado al valor es: #{cuenta.round(2)}"
    cuentafinal = cuenta + valor
    puts"-El valor con el IVA  asignado es: #{cuentafinal}"
  end

  def ingrese_valor_con_descuento
    valor=0 ; desc1="1.#{@tasa}" ; desc2="0.#{@tasa}" ; cuenta=0 ; cuentafinal=0
    print"Ingrese un valor con descuento: "
    valor=gets.chomp.to_f
    cuenta = valor / desc1.to_f
    system('clear')
    puts"-El valor sin el descuento es: #{cuenta.round(2)}\n"
    cuentafinal = cuenta * desc2.to_f
    Sputs"-El descuento de #{@tasa}% del valor ingresado es: #{cuentafinal.round(2)}"
  end

  def ingrese_valor_sin_descuento
    valor=0 ; cuenta=0 ; cuentafinal=0 ; desc=@tasa
    print"Ingrese un valor sin descuento: "
    valor=gets.chomp.to_i
    cuenta = (valor * desc) / 100
    system('clear')
    puts"-El descuento de #{@tasa}% que sera asignado es: #{cuenta.round(2)}"
    cuentafinal = valor - cuenta
    puts"-El valor con el descuento asignado es: #{cuentafinal}"
  end
end

#main
system('clear') 
cuentas=Auxiliar.new
cuentas.main
print"\nFín del Programa."
anticierre=gets.chomp