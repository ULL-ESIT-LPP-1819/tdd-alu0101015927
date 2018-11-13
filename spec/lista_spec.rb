require 'lib/lista.rb'

RSpec.describe Etiqueta do

  before :each do
      @l = List.new()
    end

  describe "# creando la lista con numeros" do
    it "se inserta correctamente en la lista " do

      expect(@l.insert(1)).to be_a(Node)
    end

    it "se extrae correctamente de la lista" do
      expect(@l.extract).to be_a(Node)
    end
  end


end
