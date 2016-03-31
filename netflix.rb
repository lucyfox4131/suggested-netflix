require './tree'

tree = Tree.new


# tree.insert(61, "Bill & Ted's Excellent Adventure")
# tree.insert(16, "Johnny English")
# tree.insert(92, "Sharknado 3")
# tree.insert(92, "Sharknado 3")
# tree.insert(17, "Yoyoyo")
# tree.insert(2, "Frozen")
# tree.insert(1, "asdf")
# tree.insert(100, "SLdgkh")
# puts "---------------------"
# puts tree.search_tree(92).rating
# puts tree.search_tree(2).rating
# puts tree.search_tree(100).rating
#
# # puts tree.sort_in_order
# tree.sort


# tree = Tree.new
# tree.insert(61, "Movie")
# tree.insert(34, "2nd Movie")
# tree.insert(16, "Another")
# tree.insert(78, "Woohoo")
#
# tree.sort


puts tree.load('movies.txt')

puts

puts tree.height

# puts tree.get_count_at_depth(0)
# puts tree.get_count_at_depth(1)
# puts tree.get_count_at_depth(2)
# puts tree.get_count_at_depth(3)
# puts tree.get_count_at_depth(4)


#if no head, data = head
#if head, pass of to head node to add new value
#node class handling search functions, tree is dumb. Basically only handling rare cases
#tests need to handle a lot of exceptions
#pass of the logic to the head node...basically all logic in the actualy node class
#really just calling base case methods in tree file
