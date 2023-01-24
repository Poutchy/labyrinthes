require_relative '../algorithms/kruskal'
require_relative '../grid/gridColor'

grid = Grid.new(20, 20)
Kruskals.on(grid)

filename = "images/kruskals.png"
grid.to_png().save(filename)
puts "saved to #{filename}"