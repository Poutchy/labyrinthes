require_relative '../grid/colored_grid'
require_relative '../grid/hexaGrid'
require_relative '../grid/hexaGridColor'
require_relative '../algorithms/binary_tree'
require_relative '../algorithms/ellers'
require_relative '../algorithms/growing_tree'
require_relative '../algorithms/kruskal'
require_relative '../algorithms/kruskalHex'
require_relative '../algorithms/prims'
require_relative '../algorithms/recursive_division'
require_relative '../algorithms/recursive_backtracker'
require_relative '../algorithms/sidewinder'
require_relative '../algorithms/aldous_brother.rb'

def generationNot(x, y, algorithm, name, type)
    grid = type.new(x, y)
    algorithm.on(grid)

    filename = "images/not/r_"+name+".png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"
end

def generationColor(x, y, algorithm, name, type)
    grid = type.new(x, y)
    algorithm.on(grid)
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances

    filename = "images/colored/r_"+name+".png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts "colored "+name + " saved to #{filename}"
end

def generationGrNot(x, y, type)
    name = "growing tree random"
    
    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| list.sample }

    filename = "images/not/r_growing_tree_random.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

    ##################################################

    name = "growing tree last"

    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| list.last }

    filename = "images/not/r_growing_tree_last.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

    ##################################################

    name = "growing tree mix"

    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| (rand(2) == 0) ? list.last : list.sample }

    filename = "images/not/r_growing_tree_mix.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

end

def generationGrColor(x, y, type)
    name = "colored growing tree random"
    
    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| list.sample }
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances
    
    filename = "images/colored/r_growing_tree_random.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"
    
    ##################################################
    
    name = "colored growing tree last"

    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| list.last }
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances
    
    filename = "images/colored/r_growing_tree_last.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"
    
    ##################################################
    
    name = "colored growing tree mix"
    
    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| (rand(2) == 0) ? list.last : list.sample }
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances
    
    filename = "images/colored/r_growing_tree_mix.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"
    
end

def generationHGrNot(x, y, type)
    name = "hexagonal growing tree random"
    
    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| list.sample }

    filename = "images/not/r_hex_growing_tree_random.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

    ##################################################

    name = "hexagonal growing tree last"

    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| list.last }

    filename = "images/not/r_hex_growing_tree_last.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

    ##################################################

    name = "hexagonal growing tree mix"

    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| (rand(2) == 0) ? list.last : list.sample }

    filename = "images/not/r_hex_growing_tree_mix.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"

end

def generationHGrColor(x, y, type)
    name = "colored hexagonal growing tree random"
    
    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| list.sample }
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances
    
    filename = "images/colored/r_hex_growing_tree_random.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"
    
    ##################################################
    
    name = "colored hexagonal growing tree last"

    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| list.last }
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances
    
    filename = "images/colored/r_hex_growing_tree_last.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"
    
    ##################################################
    
    name = "colored hexagonal growing tree mix"
    
    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| (rand(2) == 0) ? list.last : list.sample }
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances
    
    filename = "images/colored/r_hex_growing_tree_mix.png"
    File.new(filename, "a+") rescue nil
    grid.to_png().save(filename)
    puts name + " saved to #{filename}"
    
end

def generationOnlyColor(x, y, algorithm, name, type)
    grid = type.new(x, y)
    algorithm.on(grid)
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances

    filename = "images/only/r_"+name+".png"
    File.new(filename, "a+") rescue nil
    grid.to_color().save(filename)
    puts "only "+name + " saved to #{filename}"
end

def generationGrOnlyColor(x, y, type)
    name = "only growing tree random"
    
    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| list.sample }
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances
    
    filename = "images/only/r_growing_tree_random.png"
    File.new(filename, "a+") rescue nil
    grid.to_color().save(filename)
    puts name + " saved to #{filename}"
    
    ##################################################
    
    name = "only growing tree last"

    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| list.last }
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances
    
    filename = "images/only/r_growing_tree_last.png"
    File.new(filename, "a+") rescue nil
    grid.to_color().save(filename)
    puts name + " saved to #{filename}"
    
    ##################################################
    
    name = "only growing tree mix"
    
    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| (rand(2) == 0) ? list.last : list.sample }
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances
    
    filename = "images/only/r_growing_tree_mix.png"
    File.new(filename, "a+") rescue nil
    grid.to_color().save(filename)
    puts name + " saved to #{filename}"
    
end

def generationHGrOnlyColor(x, y, type)
    name = "only hexagonal growing tree random"
    
    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| list.sample }
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances
    
    filename = "images/only/r_hex_growing_tree_random.png"
    File.new(filename, "a+") rescue nil
    grid.to_color().save(filename)
    puts name + " saved to #{filename}"
    
    ##################################################
    
    name = "only hexagonal growing tree last"

    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| list.last }
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances
    
    filename = "images/only/r_hex_growing_tree_last.png"
    File.new(filename, "a+") rescue nil
    grid.to_color().save(filename)
    puts name + " saved to #{filename}"
    
    ##################################################
    
    name = "only hexagonal growing tree mix"
    
    grid = type.new(x, y)
    GrowingTree.on(grid) { |list| (rand(2) == 0) ? list.last : list.sample }
    
    start = grid[grid.rows / 2, grid.columns / 2]
    
    grid.distances = start.distances
    
    filename = "images/only/r_hex_growing_tree_mix.png"
    File.new(filename, "a+") rescue nil
    grid.to_color().save(filename)
    puts name + " saved to #{filename}"
    
end