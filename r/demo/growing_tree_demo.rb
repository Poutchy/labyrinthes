require_relative "../grid/colored_grid"
require_relative "../algorithms/growing_tree"

def save(grid, filename)
    grid.to_png.save(filename)
    puts "saved to #{filename}"
end

grid = Grid.new(20, 20)
GrowingTree.on(grid) { |list| list.sample }
save(grid, "../images/r_growing_tree_random.png")
end

grid = Grid.new(20, 20)
GrowingTree.on(grid) { |list| list.last }
save(grid, "../images/r_growing_tree_last.png")
end

grid = Grid.new(20, 20)
GrowingTree.on(grid) { |list| (rand(2) == 0) ? list.last : list.sample }
save(grid, "../images/r_growing_tree_mix.png")