require_relative '../grid/gridColorCorner'
require_relative '../algorithms/sidewinder'

grid = Grid.new(8, 8)
Sidewinder.on(grid)

puts grid

img = grid.to_png
img.save "images/sidewinder.png"