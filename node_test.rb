require 'minitest/autorun'  # => true
require_relative 'node'     # => true

class NodeTest < Minitest::Test


  def test_node_has_data
  node = Node.new("doop")         # => #<Node:0x007fdb1aae0ba8 @data="doop", @next_node=nil>
  assert_equal "doop", node.data  # => true
  end

  def test_next_node_initializes_with_nil
    node = Node.new("doop")                # => #<Node:0x007fdb1aae18f0 @data="doop", @next_node=nil>
    assert_equal nil, node.next_node       # => true
  end

  def test_next_node_holds_link
    node = Node.new("doop")              # => #<Node:0x007fdb1aae13a0 @data="doop", @next_node=nil>
    node_b = Node.new("bop")             # => #<Node:0x007fdb1aae1210 @data="bop", @next_node=nil>
    node.next_node =  node_b             # => #<Node:0x007fdb1aae1210 @data="bop", @next_node=nil>
    assert_equal node_b, node.next_node  # => true
  end

end

# >> Run options: --seed 34788
# >>
# >> # Running:
# >>
# >> ...
# >>
# >> Finished in 0.001144s, 2622.3776 runs/s, 2622.3776 assertions/s.
# >>
# >> 3 runs, 3 assertions, 0 failures, 0 errors, 0 skips
