require './lib/etiqueta/lista.rb'

RSpec.describe Etiqueta do

  before :each do

      @e1 = Tag.new(0,0,0,0,0, 5 ,0,0,0,0,0,0,0)
      @e2 = Tag.new(0,0,0,0,0, 6 ,0,0,0,0,0,0,0)
      @e3 = Tag.new(0,0,0,0,0, 1 ,0,0,0,0,0,0,0)
      @e4 = Tag.new(0,0,0,0,0, 2 ,0,0,0,0,0,0,0)
      @e5 = Tag.new(0,0,0,0,0, 8 ,0,0,0,0,0,0,0)
      @e6 = Tag.new(0,0,0,0,0, 7 ,0,0,0,0,0,0,0)
      @e7 = Tag.new(0,0,0,0,0, 9 ,0,0,0,0,0,0,0)
      @e8 = Tag.new(0,0,0,0,0, 3 ,0,0,0,0,0,0,0)
      @e9 = Tag.new(0,0,0,0,0, 4 ,0,0,0,0,0,0,0)
      @e10 = Tag.new(0,0,0,0,0, 10 ,0,0,0,0,0,0,0)
    end

  describe "# creando la lista con etiquetas" do

    it "se inserta correctamente en la lista " do
      l = List.new()
      expect(l.insert(@e1)).to be_a(Node)
    end

    it "se extrae correctamente de la lista" do
      l = List.new()
      expect(l.insert(@e1)).to be_a(Node)
      expect(l.extract).to be_a(Node)
    end

    it "se comprueba correctamente si está vacia" do
      l = List.new()
      expect(l.empty).to be true
      expect(l.insert(@e1)).to be_a(Node)
      expect(l.empty).to be false
      expect(l.extract).to be_a(Node)
      expect(l.empty).to be true
    end

    it "se comprueba correctamente el tamaño" do
      l = List.new()
      expect(l.length).to eq(0)
      l.insert(@e1)
      l.insert(@e2)
      expect(l.length).to eq(2)
    end

    it "se devuelve correctamente el contenido" do
      l = List.new()
      l.insert(@e1)
      l.insert(@e5)
      expect(l.to_s).to be_a(String)
    end
  end

  describe "# clasificando la lista segun la sal" do
    it "se clasifica correctamente la sal " do
      l = List.new()
      l.insert(@e1)
      l.insert(@e2)
      l.insert(@e3)
      l.insert(@e4)
      l.insert(@e5)
      l.insert(@e6)
      l.insert(@e7)
      l.insert(@e8)
      l.insert(@e9)
      l.insert(@e10)

      expect(clasificar(l)).to eq("{{ 5, 6, 1, 2, 3, 4 }, { 8, 7, 9, 10 }}")
    end
  end


end
