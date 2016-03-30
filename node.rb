class Node
attr_reader :rating, :title, :left_child, :right_child

  def initialize(rating, title, left_child = nil, right_child = nil)
    @rating = rating
    @title = title
    @left_child = left_child #these are less than
    @right_child = right_child #these are greater than
  end




  #this will return until our current_node.next_node == nil
  #so we return this to our methods and give them a node to work with
  #methods decide what to do with that node:
  #aka insert, depth_of, max, min, etc.....


  # def max(current_node = @root)
  #     traverse_to_max
  # end
  #
  #
  # def traverse_to_max(current_node = @root)
  #   #or just put in what you know would be max value and traverse and return current value that would be the leftmost
  #   if current_node.@right_child.nil?
  #     current_node
  #   else
  #     traverse_to_max(current_node.@right_child)
  #   end
  # end
  #
  # def traverse_to_min(current_node = @root)
  #   if current_node.@left_child.nil?
  #     current_node
  #   else
  #     traverse_to_min(current_node.@left_child)
  #   end
  # end

end



# store in new node and push to another method to place
#
# new_node <= root
# #go to the left child
# elsif new_node >= root
# #go to the right child
# end
