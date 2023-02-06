require_relative "../../grid/colored_grid"
require_relative "../../algorithms/growing_tree"

def save(grid, filename)
    grid.to_png.save(filename)
    puts "saved to #{filename}"
end

grid = Grid.new(20, 20)
GrowingTree.on(grid) { |list| list.sample }
filename = "images/not/r_growing_tree_random.png"
File.new(filename, "a+") rescue nil
save(grid, filename)

grid = Grid.new(20, 20)
GrowingTree.on(grid) { |list| list.last }
filename = "images/not/r_growing_tree_end.png"
File.new(filename, "a+") rescue nil
save(grid, filename)

grid = Grid.new(20, 20)
GrowingTree.on(grid) { |list| (rand(2) == 0) ? list.last : list.sample }
filename = "images/not/r_growing_tree_mix.png"
File.new(filename, "a+") rescue nil
save(grid, filename)