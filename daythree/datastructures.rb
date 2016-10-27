=begin 
hash = {
	:wat => [0, 1, {:wut => [0, [[0, 1, 2, 3, 4, 5, 6, 7, 8, {:bbq => "Yes!"}], 1]]}]
}

arr = [[0, 1, 2, 3, 4, {:secret => {:unlock => [0, "Yes!"]}}]]


puts hash[:wat][2][:wut][1][0][9][:bbq].upcase
puts arr[0][5][:secret][:unlock][1].upcase
=end

class CarDealer
	def initialize(inventory)
		@inventory = inventory
	end

	def cars(make)
		puts @inventory[make.to_sym]
	end

	def add_car(make, model)
		@inventory[make.to_sym] ||= []#If it exists i leave it like that if not I create a new one
		@inventory[make.to_sym].push(model)
	end

	def print_inventory
		@inventory.each do |k, v|
			print k.to_s + ": "
			puts v.join(", ") 
		end
	end
end


car_dealer = CarDealer.new({Ford: ["Escort", "Fiesta", "Escape", "Mustang"],
				BMW: ["Serie 3", "Serie 5", "Serie 7"]})

car_dealer.add_car("Audi", "A3")
car_dealer.add_car("Audi", "A3")
car_dealer.add_car("Audi", "A4")
car_dealer.add_car("Audi", "A5")
car_dealer.add_car("Audi", "A6")



car_dealer.cars("Audi")
car_dealer.print_inventory

