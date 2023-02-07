require_relative '../../grid/colored_grid'
require_relative '../../algorithms/prims'

grid = ColoredGrid.new(25, 25)
SimplifiedPrims.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances

filename = "images/colored/r_prims_simple.png"
File.new(filename, "a+") rescue nil
img = grid.to_png()
img.save(filename)
puts "saved to #{filename}"

grid = ColoredGrid.new(25, 25)
TruePrims.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances

filename = "images/colored/r_true_prim.png"
File.new(filename, "a+") rescue nil
img = grid.to_png()
img.save(filename)
puts "saved to #{filename}"