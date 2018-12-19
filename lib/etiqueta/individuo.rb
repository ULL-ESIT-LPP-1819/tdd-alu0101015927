require "./lib/etiqueta/Nutricion.rb"

# Author::    Marta Garcia (mailto:alu0101015927@ull.edu.es)
# Copyright:: Cretive Commons
# License::   Distributes under the same terms as Ruby
#
# == Clase Individuo
# Esta clase se ha creado para describir a las personas
# sin datos antropomedicos
# * metodo initialize
# * metodo to_s
#

class Individuo
  attr_accessor :name

  # Se asignan los datos de la persona
  def initialize(name)
    @name = name
  end

  # Se convierte en string los datos de la persona
  def to_s
    "Nombre: #{@name}"
  end
end


#
# == Clase Paciente
# Esta clase se ha creado para describir a las personas
# que tienen datos antropomedicos. Deriva de la clase Individuo.
# Se ha incluido el mixin Comparable.
# * metodo initialize
# * metodo to_s
# * metodo <=>
# * enumerar
#

class Paciente < Individuo
  include Comparable
  attr_accessor :datos

  # Se asignan los datos del paciente
  def initialize(n, name, peso, talla, edad, sexo, ccintura, ccadera)
    @name = name
    @datos = Nutricion.new(peso, talla, edad, sexo, ccintura, ccadera)

  end

  # Se convierte en string los datos del paciente
  def to_s
    tmp = "Nombre #{@name}\n"
    tmp += @datos.to_s
  end

  # Se define para incluir el mixin comparable
  # Se toma el valor para la comparacion el indice de masa corporal
  def <=>(anOther)
    datos.indice_masa_corporal <=> anOther.datos.indice_masa_corporal
  end


    def peso_teorico_ideal
      (@datos.talla - 150)*0.75 + 50
    end

    def gasto_energetico_basal

      if @datos.sexo == 0
          (10*@datos.peso) + (6.25*@datos.talla) - (5*@datos.edad) + 5
      else
        (10*@datos.peso) + (6.25*@datos.talla) - (5*@datos.edad) + 161
      end
    end

    def efecto_termogeno
      gasto_energetico_basal * 0.1
    end

    def gasto_actividad_fisica

        if @datos.n == 0
          factor = 0.0
        elsif @datos.n == 1
          factor = 0.12
        elsif @datos.n == 2
          factor = 0.27
        else
          factor = 0.54
        end

        gasto_energetico_basal * factor

    end

    def gasto_energetico_total
      gasto_energetico_basal + efecto_termogeno + gasto_actividad_fisica
    end


end
