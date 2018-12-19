
# Author::    Marta Garcia (mailto:alu0101015927@ull.edu.es)
# Copyright:: Cretive Commons
# License::   Distributes under the same terms as Ruby
#
# == Estructura Node
# Esta estructura se ha creado para describir a los nodos
# que contiene la clase lista
#


  Node = Struct.new(:value, :next, :prev)


  #
  # == Clase List
  # Esta clase se ha creado para describir el comportamiento
  # de una lista doblemente enlazada.
  # Se ha incluido el mixin Enumerable
  # * initialize
  # * insert
  # * extract
  # * to_s
  # * length
  # * empty
  # * each
  #

class List
  include Enumerable, Comparable
      attr_accessor :head, :tail

        # Se ponen a nil el nodo del inicio y del final
       def initialize
         @head = nil
         @tail = nil
       end

       # Se inserta un valor por el final
       def insert(value)

           node = Node.new(value, nil, @tail)

           @head = node if @head.nil?
           @tail.next = node unless @tail.nil?

            @tail = node

       end

       # Se extrae un nodo por el inicio
       def extract

          return nil if self.empty
          aux = @head
          @head = @head.next


          @head.prev = nil unless @head.nil?
          @tail = nil if @head.nil?

          aux.next = nil

          aux


       end

       # Se convierte en string la lista
      def to_s
        node = Node.new(nil,nil,nil)
        node = @head

        tmp = "{"

        if !(node.nil?)
          tmp += " #{node.value.to_s}"
          node = node.next
        end
        while !(node.nil?)
          tmp += ", #{node.value.to_s}"
          node = node.next
        end
        tmp += " }"
        tmp
      end

      # Se calcula la longitud de la lista
       def length

          size = 0
          node = @head
          while !(node.nil?)
            size = size + 1
            node = node.next
          end

          size
        end

        # Se calcula si la lista está vacia
       def empty
         @head.nil?
       end


       # Se incluye el metodo del mixin Enumerable
       # Se define como una iteracion sobre los nodos de la lista
       def each(&block)
         node = Node.new(nil,nil,nil)
         node = @head

         while !(node.nil?)
             yield node.value

           node = node.next
         end

      end

  def sort_for

    tmp = map{|x| x.gasto_energetico_total}
    orden = []
    orden.push(tmp[0])

      for i in (1..length - 1)
         for j in (0..i)
  	        if(orden[j] >= tmp[i])
  		          orden.insert(j,tmp[i])
  	            break
  	        elsif(orden[orden.length - 1] <= tmp[i])
  	  	        orden.push(tmp[i])
  		          break
  	        end
  	      end
       end

       orden

  end

  def sort_each

    tmp = map{ |x| x.gasto_energetico_total}

    i = 0
    tmp.each do |x|
    a = x
    i1 = i
    j = i1 + 1

      tmp[j..tmp.length - 1].each do |y|
        if (a > y)
          a = y
          i1 = j
        end
        j+=1
      end

      tmp[i1] = x
      tmp[i] = a
      i+=1

    end

    tmp

  end


end


#
# == Metodo clasificar
# Este metodo se ha creado para describir la
# clasificacion de una lista de etiquetas
# nutricionales en funcion de la cantidad de
# sal y la cantidad de ingesta recomendada

def clasificar (lista)
  sal_ir = List.new()
  sal_mal = List.new()

  node = lista.extract

  while !(node.nil?)

    if node.value.sal > 6
      sal_mal.insert(node.value.sal)
    else
      sal_ir.insert(node.value.sal)
    end
    node = lista.extract
  end


  "{#{sal_ir.to_s}, #{sal_mal.to_s}}"

end


#
# == Metodo clasificar_imc
# Este metodo se ha creado para describir la
# clasificacion de una lista de paciente en
# funcion del imc para comprobar si tienen o
# no obesidad
#

def clasificar_imc (lista)
  con_ob = List.new()
  sin_ob = List.new()

  node = lista.extract

  while !(node.nil?)

    if node.value.datos.indice_masa_corporal >= 30.0
      con_ob.insert(node.value.datos.indice_masa_corporal)
    else
      sin_ob.insert(node.value.datos.indice_masa_corporal)
    end
    node = lista.extract
  end

  clasificacion = List.new
  clasificacion.insert(sin_ob)
  clasificacion.insert(con_ob)

  clasificacion.to_s

end
