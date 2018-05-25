require_relative './cafetero'
require_relative './lechero'

class HacedorDeCafeConLeche

  def initialize
    @cafetero = Cafetero.new
    @lechero = Lechero.new
  end

  def preparar_un_cafe_con_leche(vaso)
    vaso = @cafetero.llenar_con_cafe(vaso)
    vaso = @lechero.llenar_con_leche(vaso)
    return vaso
  end
end