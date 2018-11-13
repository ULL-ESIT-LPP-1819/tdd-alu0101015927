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

    it "se comprueba correctamente si está vacia" do
      expect(@l.empty).to be false
      expect(@l.insert(1)).to be_a(Node)
      expect(@l.extract).to be_a(Node)
      expect(@l.empty).to be true
    end

    it "se comprueba correctamente el tamaño" do
      expect(@l.length).to eq(0)
      @l.insert(3)
      @l.insert(7)
      expect(@l.length).to eq(2)
    end
  end


end
