require './lib/etiqueta/lista.rb'
require './lib/etiqueta.rb'
require './lib/etiqueta/individuo.rb'

RSpec.describe Etiqueta do

  context "# menu" do
    before :each do

      @p1 = Paciente.new(2,"a", 60,175,25,0,85,112)
      @p2 = Paciente.new(0,"b", 60,169,3,4,5,6)
      @p3 = Paciente.new(0,"c", 120,160,3,4,5,6)
      @p4 = Paciente.new(0,"d", 55,170,3,4,5,6)
      @p5 = Paciente.new(0,"e", 78,150,3,4,5,6)

      @e1 = Tag.new(0,0,0,0,1, 400 ,0,0,0,0,0,0,0)
      @e2 = Tag.new(0,0,0,0,0, 6 ,0,0,0,0,0,0,0)
      @e3 = Tag.new(0,0,0,0,5, 100 ,0,0,0,0,0,0,0)
      @e4 = Tag.new(0,0,0,0,0, 20 ,0,0,0,0,0,0,0)
      @e5 = Tag.new(0,0,0,0,100, 80 ,0,0,0,0,0,0,0)

      @menu1 = List.new
      @menu1.insert(@e1)
      @menu1.insert(@e2)

      @menu2 = List.new
      @menu2.insert(@e2)
      @menu2.insert(@e5)

      @menu3 = List.new
      @menu3.insert(@e3)
      @menu3.insert(@e4)

      @menu4 = List.new
      @menu4.insert(@e4)
      @menu4.insert(@e1)

      @menu5 = List.new
      @menu5.insert(@e5)
      @menu5.insert(@e4)

      @menus = [@menu1,@menu2,@menu3,@menu4,@menu5,@menu1,@menu2,@menu3,@menu4,@menu5]

      @pacientes = List.new
      @pacientes.insert(@menu1)
      @pacientes.insert(@menu2)
      @pacientes.insert(@menu3)
      @pacientes.insert(@menu4)
      @pacientes.insert(@menu5)
      @pacientes.insert(@menu1)
      @pacientes.insert(@menu2)
      @pacientes.insert(@menu3)
      @pacientes.insert(@menu4)
      @pacientes.insert(@menu5)

    end

    it "diez menus en array" do
      expect(@menus.collect{ |n| n.to_s}).equal?(String)
      expect(@menus.size).to eq(10)
    end

    it "diez menus en listas" do
      expect(@pacientes.collect{ |n| n.to_s}).equal?(String)
      expect(@pacientes.length).to eq(10)
    end

    it "ordenar array con for" do

    end

  end


end
