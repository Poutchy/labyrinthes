require_relative '../algorithms/prims'
require_relative '../grid/gridColor'

grid = Grid.new(20, 20)
SimplifiedPrims.on(grid)

filename = "images/prims-simple.png"
grid.to_png.save(filename)