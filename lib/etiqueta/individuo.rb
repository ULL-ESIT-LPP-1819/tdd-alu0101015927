require "etiqueta/Nutricion.rb"
class Individuo
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_s
    "Nombre: #{@name}"
  end
end

class Paciente < Individuo
  include Comparable
  attr_accessor :datos

  def initialize(name, peso, talla, edad, sexo, ccintura, ccadera)
    @name = name
    @datos = Nutricion.new(peso, talla, edad, sexo, ccintura, ccadera)
  end

  def to_s

    tmp = "Nombre #{@name}\n"
    tmp += @datos.to_s

  end

  def <=>(anOther)
    datos.indice_masa_corporal <=> anOther.datos.indice_masa_corporal
  end
end
