require_relative '../../algorithms/kruskal'
require_relative '../../grid/gridColor'

grid = Grid.new(20, 20)
Kruskals.on(grid)

filename = "images/not/r_kruskals.png"
File.new(filename, "a+") rescue nil
grid.to_png().save(filename)
puts "saved to #{filename}"