require "minitest/autorun"
require "minitest/pride"
require "./tree"


class TreeTest < Minitest::Test

  def test_if_binary_tree_exists
    tree = Tree.new
    assert_equal Tree, tree.class
    #create a new instance of class Suggested (binary search tree)
  end

  def test_if_insert_new_node
    #test if insert one new method first? this would be the root?
      #test if inserting a root
    #then test if insert multiple what return value do we get
      #test if inserting into child nodes
  end


end
