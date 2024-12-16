
require_relative 'robot' 

warehouse_size = "5 5"

robot_data = [
  "0 1 N",
  "MMLMMRRMML"
]

results = Robot.rc_robots(warehouse_size, robot_data)

puts "Final robot positions and directions:"
results.each { |result| puts result }
