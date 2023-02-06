require_relative '../grid/gridCorner'
require_relative '../algorithms/binary_tree'

grid = Grid.new(8, 8)
BinaryTree.on(grid)

puts grid

img = grid.to_png()
filename = "images/not/r_binary_tree.png"
File.new(filename, "a+") rescue nil
save(grid, filename)
puts "saved to #{filename}"