require "minitest/autorun"
require "minitest/pride"
require "./tree"
require "./node"

class TreeTest < Minitest::Test

  def test_create_instance_of_binary_tree
    tree = Tree.new
    assert_equal Tree, tree.class
  end

  def test_is_tree_empty
    tree = Tree.new
    assert_equal true, tree.is_tree_empty?
  end

  def test_create_a_new_node
    tree = Tree.new
    new_node = tree.create_node(12, "Frozen")
    assert_equal Node, new_node.class
  end

  def test_create_the_root_node
    tree = Tree.new
    node = tree.insert(12, "Shawkshank Redemption")
    assert_equal false, tree.is_tree_empty?
  end

  def test_if_search_function_works
    tree = Tree.new
    tree.insert(44, "Mean Girls")
    node = tree.search_tree(44)
    assert_equal 44, node.rating
  end

  def test_if_search_function_returns_node
    tree = Tree.new
    tree.insert(44, "Mean Girls")
    tree.insert(55, "Scary Movie")
    node = tree.search_tree(56)
    hasAtleastOneEmptyChild = node.left.nil? || node.right.nil?
    # node.left and node.right can't both be true
    assert_equal true, hasAtleastOneEmptyChild
  end

  def test_depth_if_no_value
    tree = Tree.new
    tree.insert(44, "Party Time")
    assert_equal nil,tree.depth_of(77)
  end

  def test_depth_of_root
    tree = Tree.new
    tree.insert(44, "Party Time")
    assert_equal 0, tree.depth_of(44)
  end

  def test_depth_of_several
    tree = Tree.new
    tree.insert(44, "Party Time")
    tree.insert(55, "Numbers are Fun")
    tree.insert(66, "Mean Girls")
    tree.insert(77, "Woohoo")
    assert_equal 3,tree.depth_of(77)
  end

  def test_if_include_if_root
    tree = Tree.new
    tree.insert(36, "Movie Time")
    assert_equal true, tree.include?(36)
  end

  def test_if_include_adding_multiple
    tree = Tree.new
    tree.insert(36, "Movie Time")
    tree.insert(94, "Scary Movie")
    assert_equal true, tree.include?(94)
  end

  def test_if_does_not_include
    tree = Tree.new
    tree.insert(36, "Movie Time")
    tree.insert(94, "Scary Movie")
    assert_equal false, tree.include?(74)
  end

  def test_the_max
    tree = Tree.new
    tree.insert(61, "B&T")
    tree.insert(100, "Fantasia")
    tree.insert(10, "Fantasia")

    assert_equal ({"Fantasia"=>100}), tree.max
  end

  def test_the_max_if_max_is_root
    tree = Tree.new
    tree.insert(61, "B&T")
    tree.insert(50, "Fantasia")
    tree.insert(10, "Fantasia")

    assert_equal ({"B&T"=>61}), tree.max
  end

  def test_the_max_value_if_no_nodes
    tree = Tree.new
    assert_equal nil, tree.max
  end

  def test_the_min_if_min_is_root
    tree = Tree.new
    tree.insert(61, "B&T")
    tree.insert(100, "Fantasia")
    tree.insert(98, "Fantasia")
    assert_equal ({"B&T"=>61}), tree.min
  end

  def test_the_min
    tree = Tree.new
    tree.insert(61, "B&T")
    tree.insert(50, "Something")
    tree.insert(10, "Fantasia")
    assert_equal ({"Fantasia"=>10}), tree.min
  end

  def test_the_min_value_if_no_nodes
    tree = Tree.new
    assert_equal nil, tree.min
  end

  # def test_the_sort
  #   tree = Tree.new
  #   tree.insert(61, "Movie")
  #   tree.insert(34, "2nd Movie")
  #   assert_equal ([{"2nd Movie"=>34}, {"Movie"=>61}]), tree.sort
  # end




end
