
  Node = Struct.new(:value, :next, :prev)

class List
      attr_accessor :head, :tail

       def initialize
         @head = nil
         @tail = nil
       end

       def insert(value)

           node = Node.new(value, nil, @tail)

           @head = node if @head.nil?
           @tail.next = node unless @tail.nil?

            @tail = node

       end

       def extract

          return nil if self.empty
          aux = @head
          @head = @head.next


          @head.prev = nil unless @head.nil?
          @tail = nil if @head.nil?

          aux.next = nil

          aux


       end


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

       def length

          size = 0
          node = @head
          while !(node.nil?)
            size = size + 1
            node = node.next
          end

          size
        end

       def empty
         @head.nil?
       end
end


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
