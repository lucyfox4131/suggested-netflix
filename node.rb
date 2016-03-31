class Node
attr_reader :rating, :title, :left_child, :right_child

  def initialize(rating, title, left_child = nil, right_child = nil)
    @rating = rating
    @title = title
    @left_child = left_child #these are less than
    @right_child = right_child #these are greater than
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
#
#
#   #^these are the things a node knows
# #what are the questions I can ask this node?
# #node, what is your rating?
# #node, what is your title?
# #node, do you have a left_child?
# #node, do you have a right_child?
#
#


  #this will return until our current_node.next_node == nil
  #so we return this to our methods and give them a node to work with
  #methods decide what to do with that node:
  #aka insert, depth_of, max, min, etc.....


end



# store in new node and push to another method to place
#
# new_node <= root
# #go to the left child
# elsif new_node >= root
# #go to the right child
# end

#pull out boolean logic into small methods
# def count
#   return 1 if no head node
