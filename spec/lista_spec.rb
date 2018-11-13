require 'lib/list'

describe Lista do

  before :each do
      @l = List.new()
    end

  describe "# creando la lista con numeros" do
    it "se inserta correctamente en la lista " do
      node = Node.new(1,nil,nil)
      expect(@l.insert(1)).to eq(node)
    end
  end

  
end
