
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


          aux = @head
          tmp = Node.new(nil,nil,nil)
          tmp = @head.next
          @head = tmp

          @head.prev = nil unless @head.nil?
          @tail = nil if @head.nil?

          aux.next = nil

          aux


       end


      def to_s
        node = Node.new(nil,nil,nil)
        node = @head
        tmp = ""
        while !(node.nil?)
          tmp += "#{node.value.to_s}\n"
          node = node.next
        end
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
