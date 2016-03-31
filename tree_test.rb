require "minitest/autorun"
require "minitest/pride"
require "./tree"

class TreeTest < Minitest::Test

  def test_create_instance_of_binary_tree
    tree = Tree.new
    assert_equal Tree, tree.class
  end

  def test_if_empty_tree
    tree = Tree.new
    assert_equal true, tree.is_empty?
  end

  def test_create_a_new_node
    tree = Tree.new
    new_node = tree.create_node(12, "Frozen")
    assert_equal Node, new_node.class
  end

  def test_create_the_root_node
    tree = Tree.new
    node = tree.insert(12, "Shawkshank Redemption")

    assert_equal , 
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








#trying to insert multiple roots/error/already a root
#more edge case testing raise/fail
#
#   def test_if_insert_many_nodes
#     tree = Tree.new #make sure tree insert calls insert_root
#     tree.insert_root(61, "Bill and Ted's Excellent Adventure") #insert my root
#     # tree.insert(16, "Johnny English")
#     # tree.insert(92, "Sharknado 3")
#     # tree.insert(50, "Hannibal Buress: Animal Furnace")
#
#     assert_equal 1, tree.insert(16, "Johnny English")
#     assert_equal 1, tree.insert(92, "Sharknado 3")
#     assert_equal 2, tree.insert(50, "Hannibal Buress: Animal Furnace")
#   end
#
#   def test_if_includes
#     tree = Tree.new #each test is its own thing
#     assert_equal true,tree.include?(16)
#     assert_equal false, tree.include?(72)
#   end
#
#   def test_the_depth_of
#     tree = Tree.new
#     assert_equal 1, tree.depth_of(92)
#     assert_equal 2, tree.depth_of(50)
#   end
#
#   def test_the_max
#     tree = Tree.new
#
#     assert_equal {"Sharknado 3" => 92}, tree.max
#   end
#
#   def test_the_min
#     tree = Tree.new
#     assert_equal {"Johnny English" => 16}, tree.min
#   end
#
#   def test_the_array_sort_method
# #this function should just go find the min, output that, find the one step up, output that, etc
#     tree = Tree.new
#     assert_equal [{"Johnny English" =>16}, {"Hannibal Buress: Animal Furnace"=> 50,} {"Bill & Ted's Excellent Adventure"=> 61}, {"Sharknado 3" => 92}],tree.sort
#   end
#
#   def test_the_load_method
#     assert_equal #of files returned to the tree, tree.load('movies.txt')
#   end
#
#   def test_the_health_method
#
#   end
#


end
