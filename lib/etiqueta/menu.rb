require "./lib/etiqueta.rb"

class Menu

  def initialize(nombre, &block)
    @nombre = nombre
    @desayunos = []
    @almuerzos = []
    @cenas = []

    if block_given?
      if block.arity == 1
        yield self
      else
        instance_eval(&block)
      end
    end
  end



  def titulo(name)
  	@titulo = name
  end

  def ingesta(options = {} )

  	@min = (options[:min]) if options[:min]
  	@max = (options[:max]) if options[:max]

  end

  def valor_energetico_total

  	@valor_energetico = @desayunos.map{|x| x.valor_energetico_kcal}.reduce(:+)
  	@valor_energetico += @almuerzos.map{|x| x.valor_energetico_kcal}.reduce(:+)
  	@valor_energetico += @cenas.map{|x| x.valor_energetico_kcal}.reduce(:+)

  end

  def desayuno(descripcion, options = {})

          grasas = options[:grasas] ? options[:grasas] : 0.0
          grasas_s =  options[:grasas_s] ? options[:grasas_s] : 0.0
          hidratos = options[:hidratos] ? options[:hidratos] : 0.0
          azucares = options[:azucares] ? options[:azucares] : 0.0
          proteinas = options[:proteinas] ? options[:proteinas] : 0.0
          sal = options[:sal] ? options[:sal] : 0.0
          grasas_mon = options[:grasas_mon] ? options[:grasas_mon] : 0.0
          grasas_pol = options[:grasas_pol] ? options[:grasas_pol] : 0.0
          polialcoholes = options[:polialcoholes] ? options[:polialcoholes] : 0.0
          almidon = options[:almidon] ? options[:almidon] : 0.0
          fibra = options[:fibra] ? options[:fibra] : 0.0
          vitaminas = options[:vitaminas] ? options[:vitaminas] : 0.0
          minerales = options[:minerales] ? options[:minerales] : 0.0

          etiqueta = Tag.new(grasas , grasas_s , hidratos , azucares , proteinas , sal , grasas_mon , grasas_pol , polialcoholes , almidon , fibra , vitaminas , minerales)
          etiqueta.valor_energetico_kcal()


  	@desayunos << etiqueta
  end


  def almuerzo(descripcion ,options = {})


          grasas = options[:grasas] ? options[:grasas] : 0.0
          grasas_s =  options[:grasas_s] ? options[:grasas_s] : 0.0
          hidratos = options[:hidratos] ? options[:hidratos] : 0.0
          azucares = options[:azucares] ? options[:azucares] : 0.0
          proteinas = options[:proteinas] ? options[:proteinas] : 0.0
          sal = options[:sal] ? options[:sal] : 0.0
          grasas_mon = options[:grasas_mon] ? options[:grasas_mon] : 0.0
          grasas_pol = options[:grasas_pol] ? options[:grasas_pol] : 0.0
          polialcoholes = options[:polialcoholes] ? options[:polialcoholes] : 0.0
          almidon = options[:almidon] ? options[:almidon] : 0.0
          fibra = options[:fibra] ? options[:fibra] : 0.0
          vitaminas = options[:vitaminas] ? options[:vitaminas] : 0.0
          minerales = options[:minerales] ? options[:minerales] : 0.0

          etiqueta = Tag.new(grasas , grasas_s , hidratos , azucares , proteinas , sal , grasas_mon , grasas_pol , polialcoholes , almidon , fibra , vitaminas , minerales)
          etiqueta.valor_energetico_kcal()


          @almuerzos << etiqueta

  end

  def cena(descripcion ,options = {})


    grasas = options[:grasas] ? options[:grasas] : 0.0
    grasas_s =  options[:grasas_s] ? options[:grasas_s] : 0.0
    hidratos = options[:hidratos] ? options[:hidratos] : 0.0
  	azucares = options[:azucares] ? options[:azucares] : 0.0
  	proteinas = options[:proteinas] ? options[:proteinas] : 0.0
  	sal = options[:sal] ? options[:sal] : 0.0
  	grasas_mon = options[:grasas_mon] ? options[:grasas_mon] : 0.0
  	grasas_pol = options[:grasas_pol] ? options[:grasas_pol] : 0.0
  	polialcoholes = options[:polialcoholes] ? options[:polialcoholes] : 0.0
  	almidon = options[:almidon] ? options[:almidon] : 0.0
  	fibra = options[:fibra] ? options[:fibra] : 0.0
  	vitaminas = options[:vitaminas] ? options[:vitaminas] : 0.0
  	minerales = options[:minerales] ? options[:minerales] : 0.0

  	etiqueta = Tag.new(grasas , grasas_s , hidratos , azucares , proteinas , sal , grasas_mon , grasas_pol , polialcoholes , almidon , fibra , vitaminas , minerales)
  	etiqueta.valor_energetico_kcal()

          @cenas << etiqueta

  end


  def to_s
  	aux = "#{' ' * 24 }"

  	output = @nombre

  	output << "                    Composición nutricional"
  	output << "\n#{'=' * 150}\n\n"
  	output << "#{aux}grasas\thidratos\tazucares\tproteinas\tsal\tpolialcoholes\talmidon\tfibra\tvitaminas\tminerales\tvalor energetico\n"
  	output << "Desayuno\n"
  	output << @desayunos.join
  	output << "\nAlmuerzo\n"
          output << @almuerzos.join
  	output << "\nCena\n"
          output << @cenas.join
  	output << "\n#{'=' * 150}\n\n"
  	output << "Valor energético total:  #{valor_energetico_total}\t Ingesta mix: #{@min}\tIngesta max: #{@max}"

  end

end
