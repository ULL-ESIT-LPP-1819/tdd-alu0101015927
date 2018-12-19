require './lib/etiqueta/lista.rb'
require './lib/etiqueta.rb'
require './lib/etiqueta/individuo.rb'
require './lib/etiqueta/array.rb'

require 'benchmark'

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
      @pacientes.insert(@p1)
      @pacientes.insert(@p2)
      @pacientes.insert(@p3)
      @pacientes.insert(@p4)
      @pacientes.insert(@p5)
      @pacientes.insert(@p1)
      @pacientes.insert(@p2)
      @pacientes.insert(@p3)
      @pacientes.insert(@p4)
      @pacientes.insert(@p5)

    end

    it "diez menus en array" do
      expect(@menus.collect{ |n| n.to_s}).equal?(String)
      expect(@menus.size).to eq(10)
    end

    it "diez menus en listas" do
      expect(@pacientes.collect{ |n| n.to_s}).equal?(String)
      expect(@pacientes.length).to eq(10)
    end

    it "ordenar lista de pacientes con for, each y sort " do
      expect(@pacientes.sort_each).to eq([2580.95, 2580.95, 2883.94, 2883.94, 2955.69, 2955.69, 3056.14, 3056.14, 3847.44, 3847.44])
      expect(@pacientes.sort_for).to eq([2580.95, 2580.95, 2883.94, 2883.94, 2955.69, 2955.69, 3056.14, 3056.14, 3847.44, 3847.44])
      expect(@pacientes.map{ |x| x.gasto_energetico_total}.sort ).to eq([2580.95, 2580.95, 2883.94, 2883.94, 2955.69, 2955.69, 3056.14, 3056.14, 3847.44, 3847.44])
    end

    it "ordenar array de menus con for, each y sort" do
      expect(@menus.sort_each).to eq([740.0, 740.0, 916.0, 916.0, 1000.0, 1000.0, 2440.0, 2440.0, 2524.0, 2524.0])
      expect(@menus.sort_for).to eq([740.0, 740.0, 916.0, 916.0, 1000.0, 1000.0, 2440.0, 2440.0, 2524.0, 2524.0])
      expect(@menus.map{ |x| x.reduce(:+)}.sort).to eq([740.0, 740.0, 916.0, 916.0, 1000.0, 1000.0, 2440.0, 2440.0, 2524.0, 2524.0])
    end

    it "benchmark" do
      n = 50000
      Benchmark.bm do |x|
        x.report("for lista:") {n.times do @pacientes.sort_for; end}
        x.report("each lista:"){n.times do @pacientes.sort_each; end}
        x.report("sort lista:"){n.times do @pacientes.map{ |x| x.gasto_energetico_total}.sort ; end}

        x.report("for array:") {n.times do @menus.sort_for; end}
        x.report("each array:"){n.times do @menus.sort_each; end}
        x.report("sort array:"){n.times do @menus.map{ |x| x.reduce(:+)}.sort; end}
      end
    end
  end
end
