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

    def ingesta_referencia(x)
      suma = ngrasas + ngrasas_s + hidratos + azucares + proteinas + sal + grasas_m + grasas_p + polialcoholes + almidon + fibra + vitaminas + minerales
      (x*100)/suma
    end

    def imprimir()
      puts " \t\t\tPorcion \t IR \t "
      puts " Valor energetico\t #{self.valor_energetico_kj} kJ\t 8.400kJ"
      puts "     kJ / kcal \t\t #{self.valor_energetico_kcal} kcal\t 2000kcal"
      puts " Grasas\t\t\t #{@ngrasas} g.\t\t #{self.ingesta_referencia(@ngrasas)}%"
      puts " Grasas saturadas\t #{@ngrasas_s} g.\t\t #{self.ingesta_referencia(@ngrasas_s)}%"
      puts " Hidratos de carbono\t #{@hidratos} g.\t\t #{self.ingesta_referencia(@hidratos)}%"
      puts " Azucares\t\t #{@azucares} g.\t\t #{self.ingesta_referencia(@azucares)}%"
      puts " Proteinas\t\t #{@proteinas} g.\t\t #{self.ingesta_referencia(@proteinas)}%"
      puts " Sal\t\t\t #{@sal} g.\t\t #{self.ingesta_referencia(@sal)}%"
        if @grasas_m
          puts " Grasas monoinsaturadas\t #{@grasas_m} g.\t\t #{self.ingesta_referencia(@grasas_m)}%"
        end
        if @grasas_p
          puts " Grasas polinsaturadas\t #{@grasas_p} g.\t\t #{self.ingesta_referencia(@grasas_p)}%"
        end
        if @polialcoholes
          puts " Polialcoholes\t\t #{@polialcoholes} g.\t\t #{self.ingesta_referencia(@polialcoholes)}%"
        end
        if @almidon
          puts " Almidon\t\t #{@almidon} g.\t\t #{self.ingesta_referencia(@almidon)}%"
        end
        if @fibra
          puts " Fibra alimentaria\t #{@fibra} g.\t\t #{self.ingesta_referencia(@fibra)}%"
        end
        if @vitaminas
          puts " Vitaminas\t\t #{@vitaminas} g.\t\t #{self.ingesta_referencia(@vitaminas)}%"
        end
        if @minerales
          puts " Minerales\t\t #{@minerales} g.\t\t #{self.ingesta_referencia(@minerales)}%"
        end
    end
end
