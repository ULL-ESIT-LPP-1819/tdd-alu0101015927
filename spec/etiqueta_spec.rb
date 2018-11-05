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

end
