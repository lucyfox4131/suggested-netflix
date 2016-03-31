require "./node"

class Tree

  def initialize
    @root = nil
    @depth_counter = 0 #temporary storage of depth for depth_of method
  end

  def is_empty?
    @root.nil?
  end

  def create_node(rating, title)
    if rating == rating.to_i && title == title.to_s #make sure new node created is creating the correct types
      return new_node = Node.new(rating, title)
    else
      return false
    end
  end

  def insert_root(node)
    @root = node
  end

  def insert(rating, title)
    node_to_insert = create_node(rating, title) #create a new node with info passed to insert
    if node_to_insert
      if is_empty?
        insert_root(node_to_insert)
      elsif
        returned_node = search_tree(node_to_insert.rating)
        if returned_node.rating == node_to_insert.rating
        elsif returned_node.rating > node_to_insert.rating
          returned_node.left = node_to_insert
        else
          returned_node.right = node_to_insert
        end
      end
    else
      return "bad data"
    end
  end

  def include?(rating)
    returned_node = search_tree(rating)
    returned_node.rating == rating ? true : false
  end

  def depth_of(rating)
    if include?(rating)
      @depth_counter = 0
      search_tree(rating)
      return "The depth of #{rating} is #{@depth_counter}"
    else
      puts "That value isn't in the tree"
    end
  end

  def search_for_max(current_node = @root)
    if current_node.right
      search_for_max(current_node.right)
    else
      return current_node
    end
  end

  def max
    returned_node = search_for_max(@root)
    puts max_hash = {returned_node.title => returned_node.rating}
  end

  def search_for_min(current_node = @root)
    if current_node.left
      search_for_max(current_node.left)
    else
      return current_node
    end
  end

  def min
    returned_node = search_for_min(@root)
    puts min_hash = {returned_node.title => returned_node.rating}
  end


  def search_tree(rating, current_node = @root)
    if current_node.rating == rating
      puts "returning node #{current_node.rating}"
      return current_node
    elsif current_node.rating > rating
      if current_node.left == nil
        puts "returning node #{current_node.rating}"
        return current_node
      else
        @depth_counter = @depth_counter + 1
        return search_tree(rating, current_node.left)
      end
    else
      if current_node.right == nil
        puts "returning node #{current_node.rating}"
        return current_node
      else
        @depth_counter = @depth_counter + 1
        return search_tree(rating, current_node.right)
      end
    end
  end
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
