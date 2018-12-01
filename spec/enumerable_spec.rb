require './lib/etiqueta/lista.rb'
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




    context "# lista de pacientes enumerables" do
      before :each do

        @persona1 = Paciente.new("a", 60,169,3,4,5,6)
        @persona2 = Paciente.new("b", 120,160,3,4,5,6)
        @persona3 = Paciente.new("c", 55,170,3,4,5,6)
        @persona4 = Paciente.new("d", 78,150,3,4,5,6)
        @persona5 = Paciente.new("e", 90,155,3,4,5,6)
        @l = List.new
        @l.insert(@p1)
        @l.insert(@p2)
        @l.insert(@p3)
        @l.insert(@p4)
        @l.insert(@p5)

      end

      it "comprobrando el metodo collect" do
           expect(@l.collect{0}).to eq([0, 0, 0, 0, 0])
     end

      it "comprobando el metodo select" do
        expect(@l.select{@persona1}).to eq([125, 150, 25, 50, 200])
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
