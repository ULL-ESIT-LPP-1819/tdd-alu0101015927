require "etiqueta/version"

class Tag
  attr_reader :ngrasas, :ngrasas_s, :hidratos, :azucares, :proteinas, :sal

  def initialize(ngrasas, ngrasas_s, hidratos, azucares, proteinas, sal)
    @ngrasas = ngrasas
    @ngrasas_s = ngrasas_s
    @hidratos = hidratos
    @azucares = azucares
    @proteinas = proteinas
    @sal = sal

  end

end
