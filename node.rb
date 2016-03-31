class Node
attr_accessor :rating, :title, :left, :right

  def initialize(rating, title, left_child = nil, right_child = nil)
    @rating = rating
    @title = title
    @left = left_child #these are less than
    @right = right_child #these are greater than
  end

end
