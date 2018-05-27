class SerieFibonacci

  def calcular_elemento_de_la_serie_de_fibonacci(numero)
    if (numero <= 0)
      return 0
    elsif (numero == 1)
      return 1
    else
      return calcular_elemento_de_la_serie_de_fibonacci(numero-1) + calcular_elemento_de_la_serie_de_fibonacci(numero-2)
    end
  end

  def calcular_serie(numero)
    resultado = Array.new(numero)
    posicion = 0
    while posicion < numero do
      resultado[posicion] = calcular_elemento_de_la_serie_de_fibonacci(posicion)
      posicion +=1
    end
    return resultado
  end
end