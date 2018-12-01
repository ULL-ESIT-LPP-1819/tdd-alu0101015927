RSpec.describe Etiqueta do

  context "# lista de etiquetas enumerables" do
    before :each do

      @e1 = Tag.new(0,0,0,0,0, 5 ,0,0,0,0,0,0,0)
      @e2 = Tag.new(0,0,0,0,0, 6 ,0,0,0,0,0,0,0)
      @e3 = Tag.new(0,0,0,0,0, 1 ,0,0,0,0,0,0,0)
      @e4 = Tag.new(0,0,0,0,0, 2 ,0,0,0,0,0,0,0)
      @e5 = Tag.new(0,0,0,0,0, 8 ,0,0,0,0,0,0,0)
      @l = List.new
      @l.insert(@e1)
      @l.insert(@e2)
      @l.insert(@e3)
      @l.insert(@e4)
      @l.insert(@e5)

    end

    it "comprobrando el metodo collect" do
         expect(@l.collect{0}).to eq([0, 0, 0, 0, 0])
   end

    it "comprobando el metodo select" do
      expect(@l.select{@e1}).to eq([125, 150, 25, 50, 200])
    end

    it "comprobando el metodo max" do
      expect(@l.max).to eq(200)
    end

    it "comprobando el metodo min" do
      expect(@l.min).to eq(25)
    end

    it "comprobando el metodo sort" do
      expect(@l.sort).to eq([25, 50, 125, 150, 200])
    end

  end



end
