require "etiqueta/version"

class Tag
  include Comparable
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

    def ingesta_referencia(x)
      suma = ngrasas + ngrasas_s + hidratos + azucares + proteinas + sal + grasas_m + grasas_p + polialcoholes + almidon + fibra + vitaminas + minerales
      (x*100)/suma
    end

    def to_s
      a =  " \t\t\tPorcion \t IR \n"
      a +=  " Valor energetico\t #{self.valor_energetico_kj} kJ\t 8.400kJ\n"
      a +=  "     kJ / kcal \t\t #{self.valor_energetico_kcal} kcal\t 2000kcal\n"
      a +=  " Grasas\t\t\t #{@ngrasas} g.\t\t #{self.ingesta_referencia(@ngrasas)}%\n"
      a +=  " Grasas saturadas\t #{@ngrasas_s} g.\t\t #{self.ingesta_referencia(@ngrasas_s)}%\n"
      a +=  " Hidratos de carbono\t #{@hidratos} g.\t\t #{self.ingesta_referencia(@hidratos)}%\n"
      a +=  " Azucares\t\t #{@azucares} g.\t\t #{self.ingesta_referencia(@azucares)}%\n"
      a +=  " Proteinas\t\t #{@proteinas} g.\t\t #{self.ingesta_referencia(@proteinas)}%\n"
      a +=  " Sal\t\t\t #{@sal} g.\t\t #{self.ingesta_referencia(@sal)}%\n"
        if @grasas_m
          a +=  " Grasas monoinsaturadas\t #{@grasas_m} g.\t\t #{self.ingesta_referencia(@grasas_m)}%\n"
        end
        if @grasas_p
          a +=  " Grasas polinsaturadas\t #{@grasas_p} g.\t\t #{self.ingesta_referencia(@grasas_p)}%\n"
        end
        if @polialcoholes
          a +=  " Polialcoholes\t\t #{@polialcoholes} g.\t\t #{self.ingesta_referencia(@polialcoholes)}%\n"
        end
        if @almidon
          a +=  " Almidon\t\t #{@almidon} g.\t\t #{self.ingesta_referencia(@almidon)}%\n"
        end
        if @fibra
          a +=  " Fibra alimentaria\t #{@fibra} g.\t\t #{self.ingesta_referencia(@fibra)}%\n"
        end
        if @vitaminas
          a +=  " Vitaminas\t\t #{@vitaminas} g.\t\t #{self.ingesta_referencia(@vitaminas)}%\n"
        end
        if @minerales
          a +=  " Minerales\t\t #{@minerales} g.\t\t #{self.ingesta_referencia(@minerales)}%\n"
        end
    end


    def <=>(anOther)
      valor_energetico_kj <=> anOther.valor_energetico_kj
    end

    def enumerar
      valor_energetico_kj
    end
end
