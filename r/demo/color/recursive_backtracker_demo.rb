require_relative '../../grid/colored_grid'
require_relative '../../algorithms/recursive_backtracker'

def save(grid, filename)
    grid.to_png.save(filename)
    puts "saved to #{filename}"
end

grid = Grid.new(20, 20)
RecursiveDivision.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances

img = grid.to_png()
filename = "images/not/r_recursive_backtracker.png"
File.new(filename, "a+") rescue nil
save(grid, filename)