require 'rspec'
require_relative '../model/plazo_fijo'

describe 'PlazoFijo' do

  let(:plazoFijo) { PlazoFijo.new }

  it 'calcular plazo fijo tradicional por un monto de 100000, plazo 365 dias e interes 10 porciento deberia dar 10000 de ganancia' do
    expect(plazoFijo.calcular_ganancia_del_plazo_fijo(365, 10, 100000)).to eq 10000.00
  end

  it 'calcular plazo fijo tradicional por un monto de 100000, plazo 90 dias e interes 10 porciento deberia dar 2465 con 75 centavos de ganancia' do
    expect(plazoFijo.calcular_ganancia_del_plazo_fijo(90, 10, 100000)).to eq 2465.75
  end

  it 'calcular plazo fijo tradicional por un monto de 150000, plazo 30 dias e interes 10 porciento deberia dar 1232 con 88 centavos de ganancia' do
    expect(plazoFijo.calcular_ganancia_del_plazo_fijo(30, 10, 150000)).to eq 1232.88
  end

  it 'calcular plazo fijo tradicional por un monto de 100000, plazo 20 dias e interes 10 porciento NO deberia poder calcularlo y deberia lanzar una excepcion' do
    expect { expect { plazoFijo.calcular_ganancia_del_plazo_fijo(20, 10, 100000) }.to raise_error ArgumentError, 'El plazo debe ser mayor o igual a 30.'}
  end

  it 'calcular plazo fijo tradicional por un monto de 50, plazo 60 dias e interes 10 porciento NO deberia poder calcularlo y deberia lanzar una excepcion' do
    expect { expect { plazoFijo.calcular_ganancia_del_plazo_fijo(20, 10, 100000) }.to raise_error ArgumentError, 'El monto para este tipo de plazo fijo debe ser mayor o igual a 100.'}
  end

  it 'calcular plazo fijo precancelable por un monto de 100000, plazo acordado 90 dias, plazo real 45 e interes 10 porciento deberia dar 1232 con 88 centavos de ganancia' do
    expect(plazoFijo.calcular_ganancia_de_plazo_fijo_precancelable(90, 45, 10, 100000)).to eq 1232.88
  end

  it 'calcular plazo fijo precancelable por un monto de 100000, plazo acordado 365 dias, plazo real 365 e interes 10 porciento deberia dar 10000 de ganancia' do
    expect(plazoFijo.calcular_ganancia_de_plazo_fijo_precancelable(365, 365, 10, 100000)).to eq 10000.00
  end

  it 'calcular plazo fijo precancelable por un monto de 100000, plazo acordado 90 dias, plazo real 120 e interes 10 porciento NO deberia poder calcularlo y deberia lanzar una excepcion' do
    expect { expect { plazoFijo.calcular_ganancia_de_plazo_fijo_precancelable(90, 120, 10, 100000) }.to raise_error ArgumentError, 'Plazo incorrecto. Debe ser mayor a 1 y menor o igual al plazo acordado.'}
  end

end

