class AldousBroder

    def self.on(grid)
        current = grid.random_cell
        nb_unvisited = (grid.size) -1

        while nb_unvisited > 0
            neighbor = current.neighbors.sample
            if neighbor.links.empty?
                current.link(neighbor)
                nb_unvisited -= 1
            end
            current = neighbor
        end
    end
end