require "etiqueta/version"



# Author::    Marta Garcia (mailto:alu0101015927@ull.edu.es)
# Copyright:: Cretive Commons
# License::   Distributes under the same terms as Ruby
#
# == Clase Tag
# Esta clase se ha creado para describir las
# etiquetas nutricionales.
# Se han incluido el mixin Comparable.
# * metodo initialize
# * valor_energetico_kj
# * valor_energetico_kcal
# * ingesta_referencia
# * metodo to_s
# * <=>
# * enumerar
#

class Tag
  include Comparable
  attr_reader :ngrasas, :ngrasas_s, :hidratos, :azucares, :proteinas, :sal, :grasas_m, :grasas_p, :polialcoholes, :almidon, :fibra, :vitaminas, :minerales

    # Se asignan los valores de cada nutiente
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

    # Calcula el valor energetico de la etiqueta nutricional en kj
    def valor_energetico_kj()

      @ngrasas*37 + @grasas_m*37 + @grasas_p*37 + @hidratos*17 + @polialcoholes*10 + @almidon*17 + @fibra*8 + @proteinas*17 + @sal*25

    end

    # Calcula el valor energetico de la etiqueta nutricional en kcal
    def valor_energetico_kcal()

      @ngrasas*9 + @grasas_m*9 + @grasas_p*9 + @hidratos*4 + @polialcoholes*2.4 + @almidon*4 + @fibra*2 + @proteinas*4 + @sal*6

    end

    # Calcula el porcentaje de ingesta de un nutriente con respecto al total
    def ingesta_referencia(x)
      suma = ngrasas + ngrasas_s + hidratos + azucares + proteinas + sal + grasas_m + grasas_p + polialcoholes + almidon + fibra + vitaminas + minerales
      (x*100)/suma
    end

    # Genera el string que representa a la etiqueta nutricional
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

    # Se define para incluir el mixin comparable
    # Se toma el valor energetico en kj
    def <=>(anOther)
      valor_energetico_kj <=> anOther.valor_energetico_kj
    end

    # Se define para enumerar solo en funcion del valor energetico en kj
    def enumerar
      valor_energetico_kcal
    end
end
