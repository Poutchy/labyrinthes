class SimplifiedPrims
    def self.on(grid, start_at: grid.random_cell)
        active = []
        active.push(start_at)

        while active.any?
            cell = active.sample
            available_neighbors = cell.neighbors.select { |n| n.links.empty? }

            if available_neighbors.any?
                neighbor = available_neighbors.sample
                cell.link(neighbor)
                active.push(neighbor)
            else
                active.delete(cell)
            end
        end

        grid
    end
end

class TruePrims
    def self.on(grid, start_at: grid.random_cell)
        active = []
        active.push(start_at)

        costs = {}
        grid.each_cell { |cell| costs[cell] = rand(100) }

        while active.any?
            cell = active.min { |a, b| costs[a] <=> costs[b] }
            available_neighbors = cell.neighbors.select { |n| n.links.empty? }

            if available_neighbors.any?
                neighbor = available_neighbors.min { |a, b| costs[a] <=> costs[b] }
                cell.link(neighbor)
                active.push(neighbor)
            else
                active.delete(cell)
            end
        end

        grid
    end
end