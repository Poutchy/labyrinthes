require_relative '../../grid/colored_grid'
require_relative '../../algorithms/recursive_division'

def save(grid, filename)
    grid.to_png.save(filename)
    puts "saved to #{filename}"
end

grid = Grid.new(20, 20)
RecursiveDivision.on(grid)

puts grid

img = grid.to_png()
filename = "images/not/r_recursive_division.png"
File.new(filename, "a+") rescue nil
save(grid, filename)