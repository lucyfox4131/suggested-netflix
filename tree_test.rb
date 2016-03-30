require "minitest/autorun"
require "minitest/pride"
require "./tree"


class TreeTest < Minitest::Test

  def test_if_binary_tree_exists
    tree = Tree.new
    assert_equal Tree, tree.class
    #create a new instance of class Suggested (binary search tree)
  end

  def test_if_insert_root_node
    tree = Tree.new
    tree.insert(61, "Bill and Ted's Excellent Adventure")
    assert_equal 0, tree.insert(61, "Bill and Ted's Excellent Adventure")
    #test if insert one new method first? this would be the root?
      #test if inserting a root
    #then test if insert multiple what return value do we get
      #test if inserting into child nodes
  end

  def test_if_insert_many_nodes
    tree = Tree.new
    tree.insert(61, "Bill and Ted's Excellent Adventure") #insert my root
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal 1, tree.insert(16, "Johnny English")
    assert_equal 1, tree.insert(92, "Sharknado 3")
    tree.insert 2,(50, "Hannibal Buress: Animal Furnace")
  end

  def test_if_includes
    tree = Tree.new
    assert_equal true,tree.include?(16)
    assert_equal false, tree.include?(72)
  end

  def test_the_depth_of
    tree = Tree.new
    assert_equal 1, tree.depth_of(92)
    assert_equal 2, tree.depth_of(50)
  end

  def test_the_max
    tree = Tree.new

    assert_equal {"Sharknado 3" => 92}, tree.max
  end

  def test_the_min
    tree = Tree.new
    assert_equal {"Johnny English" => 16}, tree.min
  end

  def test_the_array_sort_method
#this function should just go find the min, output that, find the one step up, output that, etc
    tree = Tree.new
    assert_equal [{"Johnny English" =>16}, {"Hannibal Buress: Animal Furnace"=> 50,} {"Bill & Ted's Excellent Adventure"=> 61}, {"Sharknado 3" => 92}],tree.sort
  end

  def test_the_load_method
    assert_equal #of files returned to the tree, tree.load('movies.txt')
  end

  def test_the_health_method

  end



end
