require_relative '../algorithms/ellers'
require_relative '../grid/grid'

grid = Grid.new(20, 20)
Ellers.on(grid)

filename = "images/r_ellers.png"
File.new(filename, "a+") rescue nil
grid.to_png.save(filename)
puts "saved to #{filename}"