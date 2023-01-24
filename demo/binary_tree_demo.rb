require_relative '../grid/gridCorner'
require_relative '../algorithms/binary_tree'

grid = Grid.new(8, 8)
BinaryTree.on(grid)

puts grid

img = grid.to_png()
img.save "images/binary_tree.png"