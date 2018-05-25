class Vaso

  def initialize
    @cantidad_de_azucar = 0
    @sustancia
    @leche
  end

  def cambiar_contenido_a_cafe
    @sustancia = "cafe"
  end

  def poner_leche
    @leche = "leche"
  end

  def poner_n_cucharadas_de_azucar(cantidad_de_azucar)
    @cantidad_de_azucar = cantidad_de_azucar
  end

  def cantidad_de_azucar
    return @cantidad_de_azucar
  end

  def tiene_cafe?
    @sustancia == "cafe"
  end

  def tiene_azucar?
    @cantidad_de_azucar > 0
  end

  def tiene_te?
    @sustancia == "te"
  end

end