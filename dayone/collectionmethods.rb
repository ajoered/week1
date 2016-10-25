class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Alvaro's Place", "Javea", 5, 57),
  Home.new("Pepe's Penthouse", "Cadiz", 2, 34),
  Home.new("Luis's shack", "Nashville", 9, 62),
  Home.new("Edu's place", "Luarca", 4, 55),
]

sorted = homes.sort_by {|home| home.price}

#iteration1
sorted.each do |hm|
  puts "#{hm.name} in #{hm.city}\nPrice: $#{hm.price} a night\nCapacity: #{hm.capacity} "
end

#iteration2
puts "Hey there! how would you like to sort these awesome and beautiful places? Please choose by highest price or by capacity!"
answer = gets.chomp
answer.downcase
if answer = "highest price"
	sorted_price = sorted.reverse
	sorted_price.each do |hm|
  		puts "#{hm.name} in #{hm.city}\nPrice: $#{hm.price} a night\nCapacity: #{hm.capacity} "
	end	
elsif answer = "capacity"
	sorted_capacity = homes.sort_by {|home| home.capacity}
	sorted_capacity.each do |hm|
  		puts "#{hm.name} in #{hm.city}\nPrice: $#{hm.price} a night\nCapacity: #{hm.capacity} "
  	end
else 
	return "Invalid answer"
end

#iteration 3
puts "would you like to filter by city? Yes or no?"
answer = gets.chomp
answer.downcase
if answer = "yes"
	puts "Ok! which city?:"
	answer2 = gets.chomp
else
	puts "Vale!"
end

answer2.downcase

city_filter = homes.select do |hm|
	hm.city == answer2
end
city_filter.each do |hm|
  		puts "#{hm.name} in #{hm.city}\nPrice: $#{hm.price} a night\nCapacity: #{hm.capacity} "
	end	

#iteration 4
puts "would you like to know the average price?"
answer = gets.chomp
answer.downcase
if answer = "yes"
	average = homes.reduce do |sum, home|
		sum + home.capacity
	end
	puts average / homes.length
else
	puts "Vale!"
end




	



=begin
new_arr = homes.map do |hm|
	hm.price
	end

sum = new_arr.reduce do |sum, price|
	sum += price
end
average = sum/new_arr.length

puts average

sorted = homes.sort do |home1, home2|
  # Compare the two homes by their capacity
  home1.capacity <=> home2.capacity
end
=end
=begin
You can use each for pretty much every task you have to do with arrays.
You can use map to transform all the items in an array to get a new one.
You can use reduce to accumulate a single value from all the items.
You can use select to remove items from an array easily.
You can use find to pick out a single item in an array.
You can use sort to change the order of an array.
=end

