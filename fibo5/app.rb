require 'sinatra'
require 'sinatra/json'
require_relative '../fibo5/model/serie_fibonacci'

get '/fibonacci/:numero/lista' do
  serieFibonacci = SerieFibonacci.new
  json({ fibonacci: { limite: params[:numero].to_i}, lista: serieFibonacci.calcular_serie(params[:numero].to_i)})
end

get '/fibonacci/:numero/sumatoria' do
  serieFibonacci = SerieFibonacci.new
  resultado = serieFibonacci.calcular_serie(params[:numero].to_i)
  json({ fibonacci: { limite: params[:numero].to_i}, sumatoria: serieFibonacci.calcular_sumatoria(resultado)})
end
