require "etiqueta/version"

class Tag
  attr_reader :ngrasas, :ngrasas_s, :hidratos, :azucares, :proteinas, :sal, :grasas_m, :grasas_p, :polialcoholes, :almidon, :fibra, :vitaminas, :minerales

    def initialize(ngrasas, ngrasas_s, hidratos, azucares, proteinas, sal, grasas_m, grasas_p, polialcoholes, almidon, fibra, vitaminas, minerales)
      @ngrasas = ngrasas
      @ngrasas_s = ngrasas_s
      @hidratos = hidratos
      @azucares = azucares
      @proteinas = proteinas
      @sal = sal

      @grasas_m = grasas_m
      @grasas_p = grasas_p
      @polialcoholes = polialcoholes
      @almidon = almidon
      @fibra = fibra
      @vitaminas = vitaminas
      @minerales = minerales
    end


end
