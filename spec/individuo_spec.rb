require 'lib/etiqueta/individuo.rb'

RSpec.describe Etiqueta do

  context "# herencia" do
    before :each do
      @p1 = Individuo::Individuo.new("Pepe")
    end

    it "un objeto individuo es una instancia de la clase Individuo" do
        expect(@p1).to be_an_instance_of(Individuo::Individuo)
    end

  end

end
