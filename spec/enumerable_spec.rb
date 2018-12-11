require './lib/etiqueta/lista.rb'
require './lib/etiqueta/individuo.rb'

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
      expect(@l.select{@e1}).to eq([30.0, 36.0, 6.0, 12.0, 48.0])
    end

    it "comprobando el metodo max" do
      expect(@l.max).to eq(48.0)
    end

    it "comprobando el metodo min" do
      expect(@l.min).to eq(6.0)
    end

    it "comprobando el metodo sort" do
      expect(@l.sort).to eq([6.0, 12.0, 30.0, 36.0, 48.0])
    end

  end




    context "# lista de pacientes enumerables" do
      before :each do

        @persona1 = Paciente.new(0,"a", 60,169,3,4,5,6)
        @persona2 = Paciente.new(0,"b", 120,160,3,4,5,6)
        @persona3 = Paciente.new(0,"c", 55,170,3,4,5,6)
        @persona4 = Paciente.new(0,"d", 78,150,3,4,5,6)
        @persona5 = Paciente.new(0,"e", 90,155,3,4,5,6)
        @l = List.new
        @l.insert(@persona1)
        @l.insert(@persona2)
        @l.insert(@persona3)
        @l.insert(@persona4)
        @l.insert(@persona5)

      end

      it "comprobrando el metodo collect" do
           expect(@l.collect{0}).to eq([0, 0, 0, 0, 0])
     end

      it "comprobando el metodo select" do
        expect(@l.select{@persona1}).to eq([21.0, 46.9, 19.0, 34.7, 37.5])
      end

      it "comprobando el metodo max" do
        expect(@l.max).to eq(46.9)
      end

      it "comprobando el metodo min" do
        expect(@l.min).to eq(19.0)
      end

      it "comprobando el metodo sort" do
        expect(@l.sort).to eq([19.0, 21.0, 34.7, 37.5, 46.9])
      end

    end
end
