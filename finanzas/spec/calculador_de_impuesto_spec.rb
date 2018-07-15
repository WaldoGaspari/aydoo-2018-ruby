require 'rspec'
require_relative '../model/calculador_de_impuesto'

describe 'CalculadorDeImpuesto' do

  let(:calculadorImpuesto) { CalculadorDeImpuesto.new }

  it 'calcular impuesto para una empresa con una ganancia de 15000 deberia dar 0.00' do
    expect(calculadorImpuesto.calcular_impuesto_para_empresa(15000)).to eq 0.00
  end

  it 'calcular impuesto para una empresa con una ganancia de 40000 deberia dar 2000.00' do
    expect(calculadorImpuesto.calcular_impuesto_para_empresa(40000)).to eq 2000.00
  end

  it 'calcular impuesto para una empresa con una ganancia de 75000 deberia dar 7500.00' do
    expect(calculadorImpuesto.calcular_impuesto_para_empresa(75000)).to eq 7500.00
  end

  it 'calcular impuesto para una empresa con una ganancia de 225000 deberia dar 33750.00' do
    expect(calculadorImpuesto.calcular_impuesto_para_empresa(225000)).to eq 33750.00
  end

  it 'calcular impuesto para una empresa con una ganancia de 600500 deberia dar 120100.00' do
    expect(calculadorImpuesto.calcular_impuesto_para_empresa(600500)).to eq 120100.00
  end

  it 'calcular impuesto para un individuo con una ganancia de 35000 deberia dar 0.00' do
    expect(calculadorImpuesto.calcular_impuesto_para_individuo(35000)).to eq 0.00
  end

  it 'calcular impuesto para un individuo con una ganancia de 65130 deberia dar 3256.50' do
    expect(calculadorImpuesto.calcular_impuesto_para_individuo(65130)).to eq 3256.50
  end

  it 'calcular impuesto para un individuo con una ganancia de 134680 deberia dar 10774.40' do
    expect(calculadorImpuesto.calcular_impuesto_para_individuo(134680)).to eq 10774.40
  end

  it 'calcular impuesto para un individuo con una ganancia de 500000 deberia dar 50000.00' do
    expect(calculadorImpuesto.calcular_impuesto_para_individuo(500000)).to eq 50000.00
  end

end