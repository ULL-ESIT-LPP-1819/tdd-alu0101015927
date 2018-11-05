RSpec.describe Etiqueta do

  before :each do
      @p1 = Tag.new(0,1,2,3,4,5)
    end

    describe "# almacenamiento de las declaraciones obligatorias"
      it "Se almacena correctamente la cantidad de grasas" do
        expect(@p1.ngrasas).to eq(0)
      end
      it "Se almacena correctamente la cantidad de grasas saturadas" do
        expect(@p1.ngrasas_s).to eq(1)
      end
      it "Se almacena correctamente los hidratos de carbono" do
        expect(@p1.hidratos).to eq(2)
      end
      it "Se almacena correctamente los azucares" do
        expect(@p1.azucares).to eq(3)
      end
      it "Se almacena correctamente las proteinas" do
        expect(@p1.proteinas).to eq(4)
      end
      it "Se almacena correctamente la sal" do
        expect(@p1.sal).to eq(5)
      end


    describe "# almacenamiento de las declaraciones voluntarias"
      it "Se almacena correctamente las grasas monoinsaturadas" do
        expect(@p1.grasas_m).to eq(6)
      end
      it "Se almacena correctamente las grasas poliinsaturadas" do
        expect(@p1.grasas_p).to eq(7)
      end
      it "Se almacena correctamente los polialcoholes" do
        expect(@p1.polialcoholes).to eq(8)
      end
      it "Se almacena correctamente el almidon" do
        expect(@p1.almidon).to eq(9)
      end
      it "Se almacena correctamente la fibra alimentaria" do
        expect(@p1.fibra).to eq(10)
      end
      it "Se almacena correctamente las vitaminas" do
        expect(@p1.vitaminas).to eq(11)
      end
      it "Se almacena correctamente los minerales" do
        expect(@p1.minerales).to eq(12)
      end
end
