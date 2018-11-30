RSpec.describe Etiqueta do

  context "# lista de etiquetas enumerables" do
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
      @l = List.new
      @l.insert(@e1)

    end

    it "comprobrando el metodo collect" do
         expect(l.collect{@e2}).to eq(@e2)
   end

    it "comprobando el metodo select" do
      expect(@l.select).to eq(@e1)
    end

    it "comprobando el metodo max" do
      expect(@l.max).to eq(@e1)
    end

    it "comprobando el metodo min" do
      expect(@l.min).to eq(@e1)
    end

    it "comprobando el metodo sort" do
      expect(@l.sort).to eq(@e1)
    end

  end
end
