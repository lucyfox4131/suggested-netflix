require "./node"

class Tree
  #may not need this attr_reader :root

  def initialzie
    @root = Node.new(nil,nil,nil,nil)
    puts @root
  end

  def is_empty?
    @root.nil?
  end

#make sure that you are comparing the ratings and not the objects themselves

  # def searchTree(new_node.rating, current_node.rating=@root)
  #   if current_node.rating > new_node.rating
  #     if current_node.rating.left_child.nil
  #       current_node.rating
  #     else
  #       searchTree(new_node.rating, current_node.rating.left_child)
  #     end
  #   elsif current_node.rating < new_node.rating
  #     if current_node.rating.right_child.nil
  #       current_node.rating
  #     else
  #       searchTree(new_node.rating, current_node.rating.right_child)
  #     end
  #   else
  #     puts "Sorry that value already exists in your tree."
  #     return new_node.rating
  #   end
  # end

  def create_node(rating, title)
    return new_node = Node.new(rating, title)
  end

  def insert_root(node)
    if @root.nil?
       return @root.create_node(node)
    end
  end

#HOW DO I GET THIS TO RETURN DEPTH_OF, COUNTER? BUT HOW DO I RETURN BOTH? IS THAT ALL ONE METHOD?

#   def insert(rating, title)
#     new_node = Node.new(rating, title)
#     leaf_node_to_add_to.rating = searchTree(new_node.rating)
#     if leaf_node_to_add_to.rating > new_node.rating
#       leaf_node_to_add_to.rating.left_child = new_node.rating
#     elsif leaf_node_to_add_to.rating < new_node.rating
#       leaf_node_to_add_to.rating.right_child = new_node.rating
#     else
#       puts "These are equal ratings, and we are not supposed to repeat values!"
#     end
#   end
#
#   def include?(node.rating)
#     returned_node.rating = searchTree(node.rating)
#     returned_node.rating == node.rating ? true : false
#   end
#
#   def depth_of
#     #is value included?
#     #Cool, lets find its depth
#   end
#
#   def travel_to_the_max(current_node = @root.rating)
#     if current_node.nil?
#       current_node
#     else
#       travel_to_the_max(current_node.right_child.rating)
#     end
#   end
#
#   def max
#     current_node = @root
#     #or just put in what you know would be max value and traverse and return current value that would be the leftmost
#     if current_node.@right_child.nil?
#       current_node #output current node in the form of a hash, current node is the max node
#     else
#       max(current_node.@right_child)
#     end
#   end
#
#   def min(current_node = @root)
#     if current_node.@left_child.nil?
#       current_node
#     else
#       min(current_node.@left_child)
#     end
#   end
#
#
#   def sort(node = @root) #(in order traversal)
#     #this is just an in order traversal of the tree outputting in a specific format
#     return if node == nil
#     sort(node.left_child)
#     puts node.value. #whatever formating here
#     sort(node.right_child)
#   end
#
#
#   # def depth_of(@data)
#   #   included? => cool go ahead and continue
#   #   search tree and counter for each new node passed in? (will this created duplicates)
#   #   return the counter
#   # end
#   #
#
#
#
end
