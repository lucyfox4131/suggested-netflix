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

  def test_the_max
    tree = Tree.new
    tree.insert(61, "B&T")
    tree.insert(100, "Fantasia")
    tree.insert(10, "Fantasia")

    assert_equal ({"Fantasia"=>100}), tree.max
  end

  def test_the_max_value_if_no_nodes
    skip
    tree = Tree.new
    assert_equal nil, tree.max
  end







  def test_if_root_and_first_child
    skip
    tree = Tree.new

  end

  def test_if_root_and_many_children
    skip
  end

  def test_if_trying_to_insert_duplicates
    skip
  end

  def test_if_insert_wrong_number_of_arguments
    skip
  end


end
