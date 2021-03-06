require 'rspec'
require_relative '../model/serie_fibonacci'

describe 'SerieFibonacci' do

  let(:serieFibonacci) { SerieFibonacci.new }

  it 'calcular elemento de la serie de Fibonacci de 8 deberia dar 21' do
    expect(serieFibonacci.calcular_elemento_de_la_serie_de_fibonacci(8)).to eq 21
  end

  it 'calcular elemento de la serie de Fibonacci de 2 deberia dar 1' do
    expect(serieFibonacci.calcular_elemento_de_la_serie_de_fibonacci(2)).to eq 1
  end

  it 'calcular elemento de la serie de Fibonacci de 1 deberia dar 1' do
    expect(serieFibonacci.calcular_elemento_de_la_serie_de_fibonacci(1)).to eq 1
  end

  it 'calcular elemento de la serie de Fibonacci de 0 deberia dar 0' do
    expect(serieFibonacci.calcular_elemento_de_la_serie_de_fibonacci(0)).to eq 0
  end

  it 'calcular elemento de la serie de Fibonacci de un numero negativo deberia dar 0' do
    expect(serieFibonacci.calcular_elemento_de_la_serie_de_fibonacci(-5)).to eq 0
  end

  it 'calcular serie de Fibonacci de 5 deberia dar 01123' do
    expect(serieFibonacci.calcular_serie(5)).to start_with(0)
    expect(serieFibonacci.calcular_serie(5)).to end_with(3)
  end

  it 'calcular serie de Fibonacci de 1 deberia dar 0' do
    expect(serieFibonacci.calcular_serie(1)).to start_with(0)
    expect(serieFibonacci.calcular_serie(1)).to end_with(0)
  end

  it 'calcular serie de Fibonacci de 0 deberia dar vacio' do
    expect(serieFibonacci.calcular_serie(0)).to eq ([ ])
  end

  it 'calcular sumatoria de la serie de Fibonacci de 5 deberia dar 7' do
    resultado = serieFibonacci.calcular_serie(5)
    expect(serieFibonacci.calcular_sumatoria(resultado)).to eq 7
  end

  it 'calcular sumatoria de la serie de Fibonacci de 1 deberia dar 0' do
    resultado = serieFibonacci.calcular_serie(1)
    expect(serieFibonacci.calcular_sumatoria(resultado)).to eq 0
  end
end