require_relative 'lib/lib/ruby_vor'
require_relative 'pp'

points = [
  RubyVor::Point.new(120, 290),
  RubyVor::Point.new(110, 120),
  RubyVor::Point.new(160, 90.2),
  RubyVor::Point.new(3.14159265, 3.14159265)
]

# Compute the diagram & triangulation
comp = RubyVor::VDDT::Computation.from_points(points)

puts "The nearest-neighbor graph:"
pp comp.nn_graph

puts "\nThe minimum-spanning tree:"
pp comp.minimum_spanning_tree