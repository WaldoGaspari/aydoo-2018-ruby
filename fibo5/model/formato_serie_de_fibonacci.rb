class FormatoSerieDeFibonacci

  def invertir_resultado(resultado)
    resultado.reverse!
    return resultado
  end

  def calcular_numeros_pares(resultado)
    numerosPares = Array.new
    posicion = 1
    posicionPar = 0
    while posicion < resultado.length do
      if (resultado[posicion] % 2 == 0)
        numerosPares[posicionPar] = resultado[posicion]
        posicionPar +=1
      end
      posicion +=1
    end
    return numerosPares
  end

  def calcular_numeros_impares(resultado)
    numerosImpares = Array.new
    posicion = 1
    posicionImpar = 0
    while posicion < resultado.length do
      if (resultado[posicion] % 2 != 0)
        numerosImpares[posicionImpar] = resultado[posicion]
        posicionImpar +=1
      end
      posicion +=1
    end
    return numerosImpares
  end

end