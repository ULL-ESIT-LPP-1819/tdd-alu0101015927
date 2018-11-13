require 'lib/list'

describe Lista do

  before :each do
      @l = List.new()
    end

  describe "# creando la lista con numeros" do
    it "se inserta correctamente en la lista " do

      expect(@l.insert(1)).to to_be(Node)
    end

    it "se extrae correctamente de la lista" do
      expect(@l.extract).to eq(1)
    end
  end


end
