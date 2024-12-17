require_relative 'robot'

def get_input
  puts "Enter warehouse size (e.g., '5 5'):"
  warehouse_size = gets.chomp

  robot_data = []
  loop do
    puts "Enter robot position (e.g., '0 1 N') or 'done':"
    position = gets.chomp
    break if position.downcase == 'done'

    puts "Enter instructions (e.g., 'MMLMMRRMML'):"
    instructions = gets.chomp

    robot_data << [position, instructions]
  end

  [warehouse_size, robot_data]
end

warehouse_size, robot_data = get_input()

results = Robot.rc_robots(warehouse_size, robot_data.flatten) 

puts "\nFinal robot positions and directions:"
results.each { |result| puts result }