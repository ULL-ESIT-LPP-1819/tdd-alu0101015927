
class Individuo
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

class Paciente < Individuo

  attr_accessor :datos

end
