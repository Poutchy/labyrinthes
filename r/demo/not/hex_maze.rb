require_relative '../../grid/hexaGrid'
require_relative '../../algorithms/prims'

def save(grid, filename)
    grid.to_png.save(filename)
    puts "saved to #{filename}"
end

grid = HexGrid.new(10, 10)
SimplifiedPrims.on(grid)

puts grid

img = grid.to_png()
filename = "images/not/r_hexGrid_prim.png"
File.new(filename, "a+") rescue nil
save(grid, filename)