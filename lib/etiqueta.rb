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

    def valor_energetico_kj()

      @ngrasas*37 + @grasas_m*37 + @grasas_p*37 + @hidratos*17 + @polialcoholes*10 + @almidon*17 + @fibra*8 + @proteinas*17 + @sal*25

    end

    def valor_energetico_kcal()

      @ngrasas*9 + @grasas_m*9 + @grasas_p*9 + @hidratos*4 + @polialcoholes*2.4 + @almidon*4 + @fibra*2 + @proteinas*4 + @sal*6

    end
end
