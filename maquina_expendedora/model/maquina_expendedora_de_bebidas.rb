require_relative './hacedor_de_cafe_con_leche'
require_relative './hacedor_de_te_con_leche'
require_relative './azucarero'

class MaquinaExpendedoraDeBebidas

  def initialize
    @hacedor_de_cafe_con_leche = HacedorDeCafeConLeche.new
    @hacedor_de_te_con_leche = HacedorDeTeConLeche.new
    @azucarero = Azucarero.new
  end

  def hacer_cafe_con_leche_con_n_de_azucar(vaso, cantidad_de_azucar)
    vaso = @hacedor_de_cafe_con_leche.preparar_un_cafe_con_leche(vaso)
    vaso = @azucarero.agregar_n_cucharadas_de_azucar(vaso, cantidad_de_azucar)
  end

  def hacer_te_con_leche_con_n_de_azucar(vaso, cantidad_de_azucar)
    vaso = @hacedor_de_te_con_leche.preparar_un_te_con_leche(vaso)
    vaso = @azucarero.agregar_n_cucharadas_de_azucar(vaso, cantidad_de_azucar)
  end
end