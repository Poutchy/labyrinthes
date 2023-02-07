require_relative '../../grid/colored_grid'
require_relative '../../algorithms/prims'

grid = Grid.new(25, 25)
SimplifiedPrims.on(grid)

filename = "images/not/r_prims_simple.png"
File.new(filename, "a+") rescue nil
img = grid.to_png()
img.save(filename)
puts "saved to #{filename}"

grid = Grid.new(25, 25)
TruePrims.on(grid)

filename = "images/not/r_true_prims.png"
File.new(filename, "a+") rescue nil
img = grid.to_png()
img.save(filename)
puts "saved to #{filename}"