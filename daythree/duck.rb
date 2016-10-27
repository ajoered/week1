class Car
	attr_reader :noise, :wheels

	def initialize
		@wheels = 4
		@noise = "Broooom"
	end
end

class TukTuk
	attr_reader :noise, :wheels

	def initialize
		@wheels = 3
		@noise = "ñañañañañañ"
	end
end


class Bike
	attr_reader :noise, :wheels

	def initialize
		@wheels = 2
		@noise = "brrrrrrrrrr"
	end
end

class WheelCounter
	def self.count_wheels(vehicles)
		vehicles.reduce(0) do |sum, item|
			sum + item.wheels
		end
	end
end

class NoisePrinter
	def self.print_noise(vehicles)
		vehicles.reduce("") do |sum, item|
			sum + item.noise + " "
		end
	end
end



renault4 = Car.new
kawasaki = Bike.new
india = TukTuk.new

vehicles = [renault4, kawasaki, india]


puts WheelCounter.count_wheels(vehicles)
puts NoisePrinter.print_noise(vehicles)

