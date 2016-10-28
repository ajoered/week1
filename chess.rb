class Converter
	def self.letter_to_y(letter)
		if letter == "A"
			@y = 0
		elsif letter == "B"
			@y = 1
		elsif letter == "C"
			@y = 2
		elsif letter == "D"
			@y = 3
		elsif letter == "E"
			@y = 4
		elsif letter == "F"
			@y = 5
		elsif letter == "G"
			@y = 6
		elsif letter == "H"
			@y = 7
		end
		@y.to_i
	end
	def self.number_to_x(number)
		if number == 1
			@x = 7
		elsif number == 2
			@x = 6
		elsif number == 3
			@x = 5
		elsif number == 4
			@x = 4
		elsif number == 5
			@x = 3
		elsif number == 6
			@x = 2
		elsif number == 7
			@x = 1
		elsif number == 8
			@x = 0
		end
		@x.to_i
	end
end
		
class Board

	def initialize(board)
		@board = board
		@empty_array = [
	["A8", "B8", "C8", "D8", "E8", "F8", "G8", "H8"],
	["A7", "B7", "C7", "D7", "E7", "F7", "G7", "H7"],
	["A6", "B6", "C6", "D6", "E6", "F6", "G6", "H6"],
	["A5", "B5", "C5", "D5", "E5", "F5", "G5", "H5"],
	["A4", "B4", "C4", "D4", "E4", "F4", "G4", "H4"],
	["A3", "B3", "C3", "D3", "E3", "F3", "G3", "H3"],
	["A2", "B2", "C2", "D2", "E2", "F2", "G2", "H2"],
	["A1", "B1", "C1", "D1", "E1", "F1", "G1", "H1"],
	]
	end
	
	def check_position(letter, number)
		@board[Converter.number_to_x(number)][Converter.letter_to_y(letter)]
	end

	def move_check(origin, finish)
		@origin = origin
		@finish = finish 

		origin.chars
		letter_origin = origin[0]
		number_origin = origin[1].to_i
		finish.chars
		letter_finish = finish[0]
		number_finish = finish[1].to_i

		type = check_position(letter_origin, number_origin)
		if type == :wR || :bR
			Rook.new.move(origin, finish)
		else
			puts "Nothing there"
		end
	end
end

class Rook
	def initialize
	end

	def move(origin, finish)
		origin.chars
		letter_origin = origin[0]
		number_origin = origin[1].to_i
		finish.chars
		letter_finish = finish[0]
		number_finish = finish[1].to_i

		@origin_x = Converter.number_to_x(number_origin)
		@origin_y = Converter.letter_to_y(letter_origin)
		@finish_x = Converter.number_to_x(number_finish)
		@finish_y = Converter.letter_to_y(letter_finish)
	
		if @origin_x == @finish_x || @origin_y == @finish_y
			puts "VALID"
		else
			puts "INVALID"
		end
	end
end



simple_board = Board.new([
	[:bR, nil, nil, nil, nil, nil, nil, nil],
	[nil, nil, nil, nil, nil, nil, nil, nil],
	[nil, nil, nil, nil, nil, nil, nil, nil],
	[nil, nil, nil, nil, nil, nil, nil, nil],
	[nil, nil, nil, nil, nil, nil, nil, nil],
	[nil, nil, nil, nil, nil, nil, nil, nil],
	[nil, nil, nil, nil, nil, nil, nil, nil],
	[:wR, nil, nil, nil, nil, nil, nil, nil],
]) 


simple_board.move_check("A1", "A3")
simple_board.move_check("A1", "B4")
simple_board.move_check("A8", "A7")
simple_board.move_check("A8", "B5")
# a2 a3
# a2 a4
# a2 a5
# a7 a6
# a7 a5
# a7 a4
# a7 b6
# b8 a6
# b8 c6
# b8 d7
# e2 e3
# e3 e2











