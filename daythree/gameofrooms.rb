class GameOfRooms
	def initialize
		@forest = Room.new("Forest")
		@dark_room = Room.new("Dark Room")
		@forest.properties(0, 0, 0, "Dark Room")
		@dark_room.properties(0, "Forest", 0, 0)
	end

	def start
		puts "What is your name?" 
		@name = gets.chomp 
		puts "Hey #{@name}! " + @forest.puts_exit.to_s 
	end

end

class Room
	def initialize(name)
		@name = name
	end

	def properties(east, south, west, north)
		@east = east
		@south = south
		@west = west
		@north = north
	end

	def directions_array
		@array = [@east, @south, @west, @north]
	end

	def puts_exit
		string = ""
		directions_array
		@array.each do |x|
			unless x == 0
				string << x
			end
		end
		print string
	end	
end

# @forest = Room.new("Forest")
# @forest.properties(0, 0, 0, "Dark Room")
# @forest.puts_exit

game = GameOfRooms.new
game.start
