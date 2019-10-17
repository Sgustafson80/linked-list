class LinkedListNode

  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
      @data = LinkedListNode.new(value, @data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        if @data == nil
            return nil
        else
            @data = @data.next_node
            return @data.value
        # I RETURN A VALUE
        end
    end

end

def print_values(list_node)
  if list_node
    print "#{list_node.value} -->"
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list)
   stack = Stack.new
    while list
        stack.push(list.value)
        list = list.next_node
    end
    return stack.data
end

list = LinkedListNode.new(1)
list = LinkedListNode.new(2, list)
list = LinkedListNode.new(3, list)

print_values(list)
puts
list = reverse_list(list)
print_values(list)








