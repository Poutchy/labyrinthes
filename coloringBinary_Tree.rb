require 'colored_grid'
require 'binary_tree'

grid = ColoredGrid.new(25, 25)
BinaryTree.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances

filename = "images/colorizedBinary_Tree.png"
grid.to_png.save(filename)
puts "saved to #{filename}"