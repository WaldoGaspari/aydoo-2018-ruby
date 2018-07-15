require 'rspec'
require_relative '../model/compra_dolares'

describe 'CompraDolares' do

  let(:compraDolares) { CompraDolares.new }

  it 'calcular ganancia por la compra de dolares con un monto de 1000, cotizacion inicial 20 y final 28 deberia dar 400' do
    expect(compraDolares.calcular_ganancia(1000, 20, 28)).to eq 400.00
  end

  it 'calcular ganancia por la compra de dolares con un monto de 20000, cotizacion inicial 20 y final 20 deberia dar 0.0' do
    expect(compraDolares.calcular_ganancia(20000, 20, 20)).to eq 0.00
  end

  it 'calcular ganancia por la compra de dolares con un monto de 50000, cotizacion inicial 24 y final 28 deberia dar 8333.30' do
    expect(compraDolares.calcular_ganancia(50000, 24, 28)).to eq 8333.33
  end

  it 'calcular ganancia por la compra de dolares con un monto de 50000, cotizacion inicial 20 y final 18 deberia dar 0.00' do
    expect(compraDolares.calcular_ganancia(50000, 20, 18)).to eq 0.00
  end

end