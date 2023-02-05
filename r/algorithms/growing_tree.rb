class GrowingTree
    def self.on(grid, start_at: grid.random_cell)
        active = []
        active.push(start_at)

        while active.any?
            cell = yield active
            available_neighbors = cell.neighbors.select { |n| n.links.empty? }

            if available_neighbors.any?
                neighbor = available_neighbors.sample
                cell.links(neighbor)
                active.push(neighbor)
            else
                active.delete(cell)
            end
        end

        grid
    end
end
