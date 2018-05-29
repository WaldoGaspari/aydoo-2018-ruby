require 'sinatra'
require 'sinatra/json'
require_relative '../fibo5/model/serie_fibonacci'
require_relative '../fibo5/model/formato_serie_de_fibonacci'

get '/fibonacci/:numero' do
  serieFibonacci = SerieFibonacci.new
  formato = FormatoSerieDeFibonacci.new
  resultado = serieFibonacci.calcular_serie(params[:numero].to_i)

  if (params[:solo] == "pares")
    resultado = formato.calcular_numeros_pares(resultado)
  end

  if (params[:solo] == "impares")
    resultado = formato.calcular_numeros_impares(resultado)
  end

  if (params[:sentido] == "inverso")
    resultado = formato.invertir_resultado(resultado)
  end

  json({ fibonacci: { limite: params[:numero].to_i, lista: resultado} })
end

get '/fibonacci/:numero/lista' do
  serieFibonacci = SerieFibonacci.new
  formato = FormatoSerieDeFibonacci.new
  resultado = serieFibonacci.calcular_serie(params[:numero].to_i)
  if (params[:solo] == "pares")
    resultado = formato.calcular_numeros_pares(resultado)
  end

  if (params[:solo] == "impares")
    resultado = formato.calcular_numeros_impares(resultado)
  end

  if (params[:sentido] == "inverso")
    resultado = formato.invertir_resultado(resultado)
  end

  json({ fibonacci: { limite: params[:numero].to_i, lista: resultado} })
end

get '/fibonacci/:numero/sumatoria' do
  serieFibonacci = SerieFibonacci.new
  resultado = serieFibonacci.calcular_serie(params[:numero].to_i)
  json({ fibonacci: { limite: params[:numero].to_i, sumatoria: serieFibonacci.calcular_sumatoria(resultado)} })
end
