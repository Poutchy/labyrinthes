require_relative "hexaGrid"
require_relative "../cells/hex_cell"

class HexGridColor < HexGrid
    def distances=(distances)
        @distances = distances
        farthest, @maximum = distances.max
    end

    def background_color_for(cell)
        distance = @distances[cell] or return nil
        intensity = (@maximum - distance).to_f / @maximum
        dark = (255 * intensity).round
        bright = 128 + (127 * intensity).round
        ChunkyPNG::Color.rgb(dark, bright, dark)
    end
end