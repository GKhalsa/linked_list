require 'minitest/autorun'
require_relative 'link'
require 'pry'

class LinkListTest < Minitest::Test
  def test_it_can_find_the_tail
    list = LinkedList.new("bop")
    assert_equal "bop", list.tail.data
  end

  def test_it_can_append
    list = LinkedList.new("bop")
    list.append("beep")
    assert_equal "beep", list.tail.data
  end

  def test_it_can_prepend
    list = LinkedList.new("bop")
    list.prepend("beep")
    assert_equal "beep", list.head.data
  end

  def test_count_one_in_list
    list = LinkedList.new("bop")
    assert_equal 1, list.count
  end

  def test_count_two_in_list
    list = LinkedList.new("bop")
    list.append("beep")
    assert_equal 2, list.count
  end

  def test_does_list_include_specific_data
    list = LinkedList.new("bop")
    list.append("beep")
    assert_equal true, list.includes?("beep")
  end

  def test_does_include_work_with_wrong_words

    list = LinkedList.new("bop")
    list.append("belp")
    assert_equal true, list.includes?("dop")
  end

  def test_pop_off_end

    list = LinkedList.new("boop")
    list.append("beeep")
    list.pop
    assert_equal "beeep", list.pop
  end

  def test_return_single_data
    list = LinkedList.new("boop")
    list.all
    assert_equal "boop", list.all
  end

  def test_return_multiple_data
    list = LinkedList.new("boop")
    list.append("beeep")
    list.all
    assert_equal "boop beeep", list.all
  end

  def test_insert_one_element
    list = LinkedList.new("boop")
    list.append("pep")
    list.append("pip")
    assert_equal "boop pep beep pip", list.insert(2, "beep")
  end

  def test_find_data
    list = LinkedList.new("boop")
    list.append("beep")
    list.append("bep")
    list.append("pep")
    assert_equal "beep bep", list.find(1, 2)
  end

  



end
