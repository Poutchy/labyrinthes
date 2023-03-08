require 'ruby_vor'
require 'pp'

points = [
  RubyVor::Point.new(120.0, 290.0),
  RubyVor::Point.new(110.0, 120.0),
  RubyVor::Point.new(200.0, 150.0),
  RubyVor::Point.new(141.0, 219.0),
  RubyVor::Point.new(180.0, 69.0),
  RubyVor::Point.new(71.0, 75.0),
  RubyVor::Point.new(183.0, 237.0),
  RubyVor::Point.new(297.0, 121.0),
  RubyVor::Point.new(67.0, 189.0),
  RubyVor::Point.new(200.0, 200.0)
]
# visualizer svg
# Compute the diagram & triangulation
comp = RubyVor::VDDT::Computation.from_points(points)

puts "The nearest-neighbor graph:"
pp comp.nn_graph

puts "comp"
puts comp.points
puts "vDiagram"
puts comp.voronoi_diagram_raw
# puts "DenaulT"
# puts comp.delaunay_triangulation_raw
# puts "nnGraph"
# puts comp.nn_graph
# puts "mst"
# puts comp.mst
# puts "compu"

# RubyVor::Visualizer.make_svg(comp, :name => 'tri.svg')

# Just the MST
# RubyVor::Visualizer.make_svg(comp, :name => 'mst.svg', :triangulation => false, :mst => true)

# Voronoi diagram and the triangulation
# RubyVor::Visualizer.make_svg(comp, :name => 'dia.svg', :voronoi_diagram => true)

# puts "\nThe minimum-spanning tree:"
# pp comp.minimum_spanning_tree