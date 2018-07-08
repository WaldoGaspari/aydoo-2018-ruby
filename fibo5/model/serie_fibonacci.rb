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

  def calcular_sumatoria(resultado)
    total = 0
    posicion = 0
    while posicion < resultado.length do
      total += resultado[posicion]
      posicion +=1
    end
    return total
  end
end