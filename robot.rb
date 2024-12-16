class Robot
    attr_accessor :x, :y, :direction
  
    def initialize(x, y, direction, max_x, max_y)
        @x = x
        @y = y
        @direction = direction
        @max_x = max_x
        @max_y = max_y
    end
  
    def left
        case @direction
        when "N" then @direction = "W"
        when "S" then @direction = "E"
        when "W" then @direction = "S"
        when "E" then @direction = "N"
        end
    end
  
    def right
        case @direction
        when "N" then @direction = "E"
        when "S" then @direction = "W"
        when "E" then @direction = "S"
        when "W" then @direction = "N"
        end
    end
  
    def move
        case @direction
        when "N" then @y += 1 if @y < @max_y
        when "S" then @y -= 1 if @y > 0
        when "E" then @x += 1 if @x < @max_x
        when "W" then @x -= 1 if @x > 0
        end
    end
  
    def navigate(instructions)
      instructions.each_char do |instruction|
        case instruction
        when "L" then left
        when "R" then right
        when "M" then move
        end
      end
    end
  
    def self.rc_robots(warehouse_size, robot_data)
        max_x, max_y = warehouse_size.split.map(&:to_i)
        results = []
        robot_data.each_slice(2) do |position, instructions|
            x, y, direction = position.split.map { |s| s.strip }
            robot = Robot.new(x.to_i, y.to_i, direction, max_x, max_y)
            robot.navigate(instructions)
            results << "#{robot.x} #{robot.y} #{robot.direction}"
        end
      results
    end
  end