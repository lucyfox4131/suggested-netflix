class Node
attr_accessor :rating, :title, :left, :right

  def initialize(rating, title, left_child = nil, right_child = nil)
    @rating = rating
    @title = title
    @left = left_child #these are less than
    @right = right_child #these are greater than
  end
#   def rating
#     @rating
#   end
#
#   def title
#     @title
#   end
#
#   def left_child
#     @left_child
#   end
#
#   def right_child
#     @right_child
#   end
#
#   #^these are the things a node knows
# #what are the questions I can ask this node?
# #node, what is your rating?
# #node, what is your title?
# #node, do you have a left_child?
# #node, do you have a right_child?
end
