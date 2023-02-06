require_relative '../../grid/hexaGridColor'
require_relative '../../algorithms/prims'

def save(grid, filename)
    grid.to_png.save(filename)
    puts "saved to #{filename}"
end

grid = HexGrid.new(10, 10)
SimplifiedPrims.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances

img = grid.to_png()
filename = "images/colored/r_hexGrid_prim.png"
File.new(filename, "a+") rescue nil
save(grid, filename)