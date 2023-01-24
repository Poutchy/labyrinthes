require '../grid/grid'
require '../algorithms/binary_tree'

grid = Grid.new(8, 8)
BinaryTree.on(grid)

puts grid

img = grid.to_png
img.save "binary_tree.png"