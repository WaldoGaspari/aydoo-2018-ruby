require 'rspec'
require_relative '../model/plazo_fijo'

describe 'PlazoFijo' do

  let(:plazoFijo) { PlazoFijo.new }

  it 'calcular plazo fijo por un monto de 100000, plazo 365 dias e interes 10 porciento deberia dar 10000 de ganancia' do
    expect(plazoFijo.calcular_ganancia_del_plazo_fijo(365, 10, 100000)).to eq 10000.00
  end

  it 'calcular plazo fijo por un monto de 100000, plazo 90 dias e interes 10 porciento deberia dar 2465 con 75 centavos de ganancia' do
    expect(plazoFijo.calcular_ganancia_del_plazo_fijo(90, 10, 100000)).to eq 2465.75
  end

  it 'calcular plazo fijo por un monto de 150000, plazo 30 dias e interes 10 porciento deberia dar 1232 con 88 centavos de ganancia' do
    expect(plazoFijo.calcular_ganancia_del_plazo_fijo(30, 10, 150000)).to eq 1232.88
  end
end

