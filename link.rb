require_relative 'node'  # => true
require 'pry'            # => true

class LinkedList
  attr_reader :head  # => nil

  def initialize(data)
    @head = Node.new(data)
    @count = 1
    @truth = 0
    @position_count = 0
  end

  def tail
    temporary_head = @head
    until temporary_head.next_node == nil  #not moving here
      temporary_head = temporary_head.next_node
    end
    temporary_head   # = tail
  end

  def append(data)
    new_node = Node.new(data)
    tail.next_node = new_node
  end

  def prepend(data)
    temporary_head = @head
    @head = Node.new(data)
    @head.next_node = temporary_head
    #initialize new node
    #new node points to temporary_head
    #def prepend(data)
    # temporary_head = @head
    # @head = Node.new(data, temporary_head)
  end

  def count
    temporary_head = @head
    if temporary_head.next_node == nil
      @count
    else
      until temporary_head.next_node == nil
        @count += 1
        temporary_head = temporary_head.next_node
      end
    end
    @count
  end

  def includes?(data)
    temporary_head = @head
     if temporary_head.data == data
       @truth += 2
     elsif temporary_head = temporary_head.next_node
        temporary_head.data == data
         @truth += 2
      elsif temporary_head = temporary_head.next_node
        temporary_head.data == data
         @truth += 2
      elsif temporary_head = temporary_head.next_node
        temporary_head.data == data
          @truth += 2
      elsif temporary_head = temporary_head.next_node
        temporary_head.data == data
           @truth += 2
      elsif temporary_head = temporary_head.next_node
        temporary_head.data == nil
           @truth = 1
      end
         if @truth.even?
           true
         else
           false
         end
    end

    def pop
      temporary_head = @head
      until temporary_head.next_node == nil
        temporary_head = temporary_head.next_node
      end
       temporary_head.data
    end

    # until temporary_head == nil
    #   return true if temporary_head.data == data
    #   current node = current node .next node
    # end
    #  false



    def all
      words = ""
      temporary_head = @head
      until temporary_head == nil
        words << temporary_head.data + " "
        temporary_head = temporary_head.next_node
      end
       words.chop
    end

    def insert(position, data)
      temporary_head = @head
      new_node = Node.new(data)
      count = 0
      until count == position
        count += 1
        temporary_head = temporary_head.next_node
      end
        new_node.next_node = temporary_head

        temporary_head = @head
        count = 0
      until count == position - 1
        count += 1
        temporary_head = temporary_head.next_node
      end
      temporary_head.next_node = new_node
      all
    end

    def find(position, juice)
      raw_data = ""
      refined_data = ""
      count = 0
      count_b = 0
      temporary_head = @head

     until count == position
       count += 1
       raw_data << temporary_head.data + " "
       temporary_head = temporary_head.next_node
       #binding.pry
     end
      new_start = temporary_head
       until count_b == juice
         count_b += 1
         refined_data << new_start.data + " "
         new_start = new_start.next_node
       end
         refined_data.chop

        #  def play
        #   `say -r 500 -v Boing #{all}`
        # end



      #raw_data.chop(

      # (position + juice) - juice





      #next_node
    end

end

    #boop pep  <beep> pip


    #  temporary_head.tail
