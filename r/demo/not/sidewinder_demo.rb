require_relative '../grid/gridColorCorner'
require_relative '../algorithms/sidewinder'

grid = Grid.new(8, 8)
Sidewinder.on(grid)

puts grid

filename = "images/r_sidewinder.png"
File.new(filename, "a+") rescue nil
grid.to_png.save(filename)
puts "saved to #{filename}"