require './lib/etiqueta.rb'

RSpec.describe Etiqueta do

  context "# etiquetas comparables" do
    before :each do

      @p1 = Tag.new(0,1,2,3,4,5,6,7,8,9,10,11,12)
      @p2 = Tag.new(0,30,30,30,30,30,30,30,30,30,30,30,30)

    end

    it "una etiqueta es menor que otra" do
        expect(@p1 < @p2).to be true
    end

    it "una etiqueta es menor igual que otra" do
        expect(@p1 <= @p2).to be true
    end

    it "una etiqueta es igual que otra" do
        expect(@p1 == @p2).to be true
    end

    it "una etiqueta es mayor que otra" do
        expect(@p1 > @p2).to be true
    end

    it "una etiqueta es mayor igual que otra" do
        expect(@p1 >= @p2).to be true
    end

    it "una etiqueta esta entre otras dos" do
      expect(@p1.between?(@p2,@p2)).to be true
    end
  end

end
