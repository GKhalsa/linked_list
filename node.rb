
class Node

  attr_reader :data         # => nil
  attr_accessor :next_node  # => nil

    def initialize(data, next_node = nil)
      @data = data
      @next_node = next_node
    end


  end



#    def linked
#      if @next_node == nil
#        then @next_node = Node.new(data)
#       #@node_b??
# end
#
# if @next_node something @count += 1
#
#    if @next_node == nil
#      break
#
#   def append(data)
#     if head == nil
#       @head = Node.new(data)
#       @tail = @head
#     else
#       @tail.next_node = Node.new(data)
#       @tail = @tail.next_node
#     end
#   end
