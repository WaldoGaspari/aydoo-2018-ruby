require_relative './hacedor_de_te'
require_relative './lechero'

class HacedorDeTeConLeche

  def initialize
    @hacedorDeTe = HacedorDeTe.new
    @lechero = Lechero.new
  end

  def preparar_un_te_con_leche(vaso)
    vaso = @hacedorDeTe.llenar_con_te(vaso)
    vaso = @lechero.llenar_con_leche(vaso)
    return vaso
  end
end