class Ellers
    class RowState
        def initialize(starting_set=0)
            @cells_in_set = {}
            @set_for_cell = []
            @next_set = starting_set
        end

        def record(set, cell)
            @set_for_cell[cell.column] = set

            @cells_in_set[set] = [] if !@cells_in_set[set]
            @cells_in_set[set].push cell
        end

        def set_for(cell)
    end
end