require './lib/etiqueta/individuo.rb'
require './lib/etiqueta/lista.rb'

RSpec.describe Etiqueta do

  context "# herencia" do
    before :each do
      @p1 = Individuo.new("Pepe")
      @p2 = Paciente.new("Juan", 60,175,25,0,85,112)
    end

    it "un objeto individuo es una instancia de la clase Individuo" do
        expect(@p1).to be_an_instance_of(Individuo)
    end

    it "un objeto paciente es una instancia de la clase Paciente" do
        expect(@p2).to be_an_instance_of(Paciente)
    end

    it "comprobando jerarquía" do
      expect(@p1).not_to be_a_kind_of(Paciente)
      expect(@p1).to be_a_kind_of(Individuo)
      expect(@p1).to be_a_kind_of(Object)
      expect(@p1).to be_a_kind_of(BasicObject)

      expect(@p2).to be_a_kind_of(Paciente)
      expect(@p2).to be_a_kind_of(Individuo)
      expect(@p2).to be_a_kind_of(Object)
      expect(@p2).to be_a_kind_of(BasicObject)
    end
  end

    context "# tipo" do
      before :each do
        
          @p1 = Individuo.new("Pepe")
          @p2 = Paciente.new("Juan", 60,175,25,0,85,112)
        end

      it "un objeto individuo responde al metodo nombre" do
          expect(@p1).to respond_to(:name)
      end
      it "Un objeto paciente responde a los metodos nombre y datos" do
        expect(@p2).to respond_to(:name, :datos)
      end

      it "un objeto individuo responde al metodo to_s" do
        expect(@p1).to respond_to('to_s')
      end

      it "un objeto paciente responde al metodo to_s" do
        expect(@p2).to respond_to('to_s')
      end
    end

    context "# clasificar" do

      before :each do
        @persona1 = Paciente.new("a", 60,169,3,4,5,6)
        @persona2 = Paciente.new("b", 120,160,3,4,5,6)
        @persona3 = Paciente.new("c", 55,170,3,4,5,6)
        @persona4 = Paciente.new("d", 78,150,3,4,5,6)
        @persona5 = Paciente.new("e", 90,155,3,4,5,6)
        @persona6 = Paciente.new("f", 150,190,3,4,5,6)
        @persona7 = Paciente.new("g", 65,166,3,4,5,6)
        @persona8 = Paciente.new("h", 98,159,3,4,5,6)
        @persona9 = Paciente.new("i", 100,180,3,4,5,6)
        @persona10 = Paciente.new("j", 50,161,3,4,5,6)

      end
      it "clasificacion de pacientes en tratamiento de Obesidad" do

        l = List.new
        l.insert(@persona1)
        l.insert(@persona2)
        l.insert(@persona3)
        l.insert(@persona4)
        l.insert(@persona5)
        l.insert(@persona6)
        l.insert(@persona7)
        l.insert(@persona8)
        l.insert(@persona9)
        l.insert(@persona10)

          expect(clasificar_imc(l)).to eq("{ { 21.0, 19.0, 23.6, 19.3 }, { 46.9, 34.7, 37.5, 41.6, 38.8, 30.9 } }")
      end
    end

end
