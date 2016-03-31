require "./node"

class Tree
  attr_accessor :sort

  def initialize
    @root = nil
    @depth_counter = 0 #temporary storage of depth for depth_of method
    @sorted_array = []
  end

  def is_tree_empty?
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
      if is_tree_empty?
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
      return @depth_counter
    end
  end

  def search_for_max(current_node = @root)
    if current_node.right.nil?
      return current_node
    elsif current_node.right
      search_for_max(current_node.right)
    else
      return nil
    end
  end

  def max
    if @root == nil
      return nil
    end
    returned_node = search_for_max(@root)
    if returned_node == nil
      puts "There are no values in your tree so you do not have a max."
    else
      max_hash = {returned_node.title => returned_node.rating}
      return max_hash
    end
  end

  def search_for_min(current_node = @root)
    if current_node.left.nil?
      return current_node
    elsif current_node.left
      search_for_min(current_node.left)
    else
      return nil
    end
  end

  def min
    if @root == nil
      return nil
    end
    returned_node = search_for_min(@root)
    if returned_node == nil
      puts "There are no values in your tree so you do not have a min."
    else
      min_hash = {returned_node.title => returned_node.rating}
      return min_hash
    end
  end

  def sort
    sort_in_order
    puts @sorted_array
  end

  def sort_in_order(node = @root)
    if node.left != nil
      sort_in_order(node.left)
    end
    @sorted_array << {node.title => node.rating}
    if node.right != nil
      sort_in_order(node.right)
    end
  end

  def load(file = 'movies.txt')
    counter = 0;
    File.open(file).readlines.each do |line|
      input_array = line.chomp.split(",")
      counter += 1
      insert(input_array[0].to_i, input_array[1])
    end
    counter
  end

  def search_tree(rating, current_node = @root)
    if current_node.rating == rating
      return current_node
    elsif current_node.rating > rating
      if current_node.left == nil
        return current_node
      else
        @depth_counter = @depth_counter + 1
        return search_tree(rating, current_node.left)
      end
    else
      if current_node.right == nil
        return current_node
      else
        @depth_counter = @depth_counter + 1
        return search_tree(rating, current_node.right)
      end
    end
  end
end
