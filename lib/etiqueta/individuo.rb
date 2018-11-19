require "etiqueta/Nutricion.rb"
class Individuo
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

class Paciente < Individuo
  attr_accessor :datos

  def initialize(name, peso, talla, edad, sexo, ccintura, ccadera)
    @name = name
    @datos = Nutricion.new(peso, talla, edad, sexo, ccintura, ccadera)
  end


end
