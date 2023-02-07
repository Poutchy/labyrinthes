require_relative '../grid/colored_grid'
require_relative '../algorithms/binary_tree'
require_relative '../algorithms/ellers'
require_relative '../algorithms/growing_tree'
require_relative '../algorithms/kruskal'
require_relative '../algorithms/prims'
require_relative '../algorithms/recursive_division'
require_relative '../algorithms/recursive_backtracker'
require_relative '../algorithms/sidewinder'

def generationNot(x, y, algorithm, name)
    grid = Grid.new(x, y)
    algorithm.on(grid)

    filename = "images/not/r_"+name+".png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"
end

def generationGrNot(x, y)
    name = "growing tree random"
    
    grid = Grid.new(x, y)
    GrowingTree.on(grid) { |list| list.sample }

    filename = "images/not/r_growing_tree_random.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

    ##################################################

    name = "growing tree last"

    grid = ColoredGrid.new(x, y)
    GrowingTree.on(grid) { |list| list.last }

    start = grid[grid.rows / 2, grid.columns / 2]

    grid.distances = start.distances

    filename = "images/not/r_growing_tree_last.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

    ##################################################

    name = "growing tree mix"

    grid = ColoredGrid.new(x, y)
    GrowingTree.on(grid) { |list| (rand(2) == 0) ? list.last : list.sample }

    start = grid[grid.rows / 2, grid.columns / 2]

    grid.distances = start.distances

    filename = "images/not/r_growing_tree_mix.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

end

def generationColor(x, y, algorithm, name)
    grid = ColoredGrid.new(x, y)
    algorithm.on(grid)

    start = grid[grid.rows / 2, grid.columns / 2]

    grid.distances = start.distances

    filename = "images/colored/r_"+name+".png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts "colored "+name + " saved to #{filename}"
end

def generationGrColor(x, y)
    name = "colored growing tree random"
    
    grid = ColoredGrid.new(x, y)
    GrowingTree.on(grid) { |list| list.sample }

    start = grid[grid.rows / 2, grid.columns / 2]

    grid.distances = start.distances

    filename = "images/colored/r_growing_tree_random.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

    ##################################################

    name = "colored growing tree last"

    grid = ColoredGrid.new(x, y)
    GrowingTree.on(grid) { |list| list.last }

    start = grid[grid.rows / 2, grid.columns / 2]

    grid.distances = start.distances

    filename = "images/colored/r_growing_tree_last.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

    ##################################################

    name = "colored growing tree mix"

    grid = ColoredGrid.new(x, y)
    GrowingTree.on(grid) { |list| (rand(2) == 0) ? list.last : list.sample }

    start = grid[grid.rows / 2, grid.columns / 2]

    grid.distances = start.distances

    filename = "images/colored/r_growing_tree_mix.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

end

generationNot(100, 100, TruePrims, "true_prims")
generationNot(100, 100, SimplifiedPrims, "simplified_prims")

generationNot(100, 100, BinaryTree, "binary_tree")
generationNot(100, 100, Ellers, "ellers")
generationNot(100, 100, Kruskals, "kruskals")
generationNot(100, 100, RecursiveDivision, "recursive_division")
generationNot(100, 100, RecursiveBacktracker, "recursive_backtracker")
generationNot(100, 100, Sidewinder, "sidewinder")

generationGrNot(100, 100)

generationColor(100, 100, TruePrims, "true_prims")
generationColor(100, 100, SimplifiedPrims, "simplified_prims")

generationColor(100, 100, BinaryTree, "binary_tree")
generationColor(100, 100, Ellers, "ellers")
generationColor(100, 100, Kruskals, "kruskals")
generationColor(100, 100, RecursiveDivision, "recursive_division")
generationColor(100, 100, RecursiveBacktracker, "recursive_backtracker")
generationColor(100, 100, Sidewinder, "sidewinder")

generationGrColor(100, 100)
