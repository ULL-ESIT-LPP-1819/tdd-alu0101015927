require 'lib/etiqueta/individuo.rb'

RSpec.describe Etiqueta do

  context "# herencia" do
    before :each do
      @p1 = Individuo.new("Pepe")
      @p2 = Paciente.new()
    end

    it "un objeto individuo es una instancia de la clase Individuo" do
        expect(@p1).to be_an_instance_of(Individuo)
    end

    it "un objeto paciente es una instancia de la clase Paciente" do
        expect(@p2).to be_an_instance_of(Paciente)
    end

    
  end

end
