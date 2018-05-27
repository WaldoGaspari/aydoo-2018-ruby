require 'sinatra'
require 'sinatra/json'
require_relative '../fibo5/model/serie_fibonacci'

get '/fibonacci/:numero' do
  serieFibonacci = SerieFibonacci.new
  json({ fibonacci: { limite: params[:numero].to_i}, lista: serieFibonacci.calcular_serie(params[:numero].to_i) })
end
