require 'rspec'
require_relative '../model/serie_fibonacci'
require_relative '../model/formato_serie_de_fibonacci'

describe 'SerieFibonacci' do

  let(:serieFibonacci) { SerieFibonacci.new }
  let(:formato) { FormatoSerieDeFibonacci.new}

  it 'calcular serie de Fibonacci de 5 en sentido inverso deberia dar 32110' do
    resultado = serieFibonacci.calcular_serie(5)
    resultado = formato.invertir_resultado(resultado)
    expect(resultado).to start_with(3)
    expect(resultado).to end_with(0)
  end

  it 'calcular serie de Fibonacci de 8 obteniendo solo sus numeros pares deberia dar 28' do
    resultado = serieFibonacci.calcular_serie(8)
    resultado = formato.calcular_numeros_pares(resultado)
    expect(resultado).to start_with(2)
    expect(resultado).to end_with(8)
  end

  it 'calcular serie de Fibonacci de 5 obteniendo solo sus numeros impares deberia dar 113' do
    resultado = serieFibonacci.calcular_serie(5)
    resultado = formato.calcular_numeros_impares(resultado)
    expect(resultado).to start_with(1)
    expect(resultado).to end_with(3)
  end

end