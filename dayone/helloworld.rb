cities = ["Madrid", "Barcelona", "Oslo", "Miami"]
longest_city = cities.reduce("") do |longest, city|
	if city.length > longest.length
		city
	else
		longest
	end
end
puts longest_city

sweets = [ "cookies", "ice cream", "pie", "crème brûlée" ]
sweets.each_with_index do |item, index|
  puts "Day #{index+1}: I ate #{item}"
end

favorites = { food: "pizza", sport: "bjj", music: "punk" }
favorites.each_with_index do |(key, value), index|
  puts "Fave item #{index+1}: My fave #{key.to_s} is #{value}"
end

#hello