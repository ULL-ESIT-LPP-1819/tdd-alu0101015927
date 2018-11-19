require 'lib/etiqueta/individuo.rb'
require 'lib/etiqueta/lista.rb'

RSpec.describe Etiqueta do

  context "# herencia" do
    before :each do
      @p1 = Individuo.new("Pepe")
      @p2 = Paciente.new("Juan", 1,2,3,4,5,6)

    end

    it "un objeto individuo es una instancia de la clase Individuo" do
        expect(@p1).to be_an_instance_of(Individuo)
    end

    it "un objeto paciente es una instancia de la clase Paciente" do
        expect(@p2).to be_an_instance_of(Paciente)
    end

    it "clasificacion de pacientes en tratamiento de Obesidad" do
      persona1 = Paciente.new("a", 1,2,3,4,5,6)
      persona2 = Paciente.new("b", 1,2,3,4,5,6)
      persona3 = Paciente.new("c", 1,2,3,4,5,6)
      persona4 = Paciente.new("d", 1,2,3,4,5,6)
      persona5 = Paciente.new("e", 1,2,3,4,5,6)
      persona6 = Paciente.new("f", 1,2,3,4,5,6)
      persona7 = Paciente.new("g", 1,2,3,4,5,6)
      persona8 = Paciente.new("h", 1,2,3,4,5,6)
      persona9 = Paciente.new("i", 1,2,3,4,5,6)
      persona10 = Paciente.new("j", 1,2,3,4,5,6)

      l = List.new
      l.insert(persona1)
      l.insert(persona2)
      l.insert(persona3)
      l.insert(persona4)
      l.insert(persona5)
      l.insert(persona6)
      l.insert(persona7)
      l.insert(persona8)
      l.insert(persona9)
      l.insert(persona10)

        expect(clasificar_imc(l)).to eq(" ") 
    end

  end

end
