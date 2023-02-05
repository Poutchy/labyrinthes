require_relative '../grid/colored_grid'
require_relative '../algorithms/kruskal'

grid = ColoredGrid.new(25, 25)
Kruskals.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances

filename = "../images/r_colorized_kruskal.png"
img = grid.to_png()
img.save(filename)
puts "saved to #{filename}"