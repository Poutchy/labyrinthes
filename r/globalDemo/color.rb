require_relative '../grid/colored_grid'
require_relative '../algorithms/binary_tree'
require_relative '../algorithms/ellers'
require_relative '../algorithms/growing_tree'
require_relative '../algorithms/kruskal'
require_relative '../algorithms/prims'
require_relative '../algorithms/recursive_division'
require_relative '../algorithms/recursive_backtracker'
require_relative '../algorithms/sidewinder'

def generation(x, y, algorithm, name)
    grid = ColoredGrid.new(x, y)
    algorithm.on(grid)

    start = grid[grid.rows / 2, grid.columns / 2]

    grid.distances = start.distances

    filename = "images/colored/r_"+name+".png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"
end

def generationGr(x, y)
    name = "growing tree random"
    
    grid = ColoredGrid.new(x, y)
    GrowingTree.on(grid) { |list| list.sample }

    start = grid[grid.rows / 2, grid.columns / 2]

    grid.distances = start.distances

    filename = "images/colored/r_growing_tree_random.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

    ##################################################

    name = "growing tree last"

    grid = ColoredGrid.new(x, y)
    GrowingTree.on(grid) { |list| list.last }

    start = grid[grid.rows / 2, grid.columns / 2]

    grid.distances = start.distances

    filename = "images/colored/r_growing_tree_last.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

    ##################################################

    name = "growing tree mix"

    grid = ColoredGrid.new(x, y)
    GrowingTree.on(grid) { |list| (rand(2) == 0) ? list.last : list.sample }

    start = grid[grid.rows / 2, grid.columns / 2]

    grid.distances = start.distances

    filename = "images/colored/r_growing_tree_mix.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

end

generation(100, 100, TruePrims, "true_prims")
generation(100, 100, SimplifiedPrims, "simplified_prims")

generation(100, 100, BinaryTree, "binary_tree")
generation(100, 100, Ellers, "ellers")
generation(100, 100, Kruskals, "kruskals")
generation(100, 100, RecursiveDivision, "recursive_division")
generation(100, 100, RecursiveBacktracker, "recursive_backtracker")
generation(100, 100, Sidewinder, "sidewinder")

generationGr(100, 100)