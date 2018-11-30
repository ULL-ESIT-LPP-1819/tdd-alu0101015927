require './lib/etiqueta.rb'

RSpec.describe Etiqueta do

  context "# etiquetas comparables" do
    before :each do

      @p1 = Tag.new(1,1,2,3,4,5,6,7,8,9,10,11,12)
      @p2 = Tag.new(30,30,30,30,30,30,30,30,30,30,30,30,30)

    end


    it "una etiqueta es menor que otra" do
        expect(@p1 < @p2).to eq(true)
    end

    it "una etiqueta es menor igual que otra" do
        expect(@p1 <= @p2).to eq(true)
    end

    it "una etiqueta es igual que otra" do
        expect(@p1 == @p2).to eq(false)
    end

    it "una etiqueta es mayor que otra" do
        expect(@p1 > @p2).to eq(false)
    end

    it "una etiqueta es mayor igual que otra" do
        expect(@p1 >= @p2).to eq(false)
    end

    it "una etiqueta esta entre otras dos" do
      expect(@p1.between?(@p2,@p2)).to eq(false)
    end
  end



  context "# pacientes comparables" do
    before :each do
      @persona1 = Paciente.new("a", 60,169,3,4,5,6)
      @persona2 = Paciente.new("b", 120,160,3,4,5,6)

    end

    it "una etiqueta es menor que otra" do
        expect(@persona1 < @persona2).to eq(true)
    end

    it "una etiqueta es menor igual que otra" do
        expect(@persona1 <= @persona2).to eq(true)
    end

    it "una etiqueta es igual que otra" do
        expect(@persona1 == @persona2).to eq(false)
    end

    it "una etiqueta es mayor que otra" do
        expect(@persona1 > @persona2).to eq(false)
    end

    it "una etiqueta es mayor igual que otra" do
        expect(@persona1 >= @persona2).to eq(false)
    end

    it "una etiqueta esta entre otras dos" do
      expect(@persona1.between?(@persona2,@persona2)).to eq(false)
    end
  end

end
