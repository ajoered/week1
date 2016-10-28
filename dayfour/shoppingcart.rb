class ShoppingCart
	attr_accessor :shopping_list, :price_list
	def initialize
		@shopping_list = {}
		@price_list = {
			apple: 10,
			oranges: 5,
			grapes: 15,
			banana: 20,
			watermelon: 50
		}
	end

	def add_to_cart(key)
		@shopping_list[key] ||= 0
		@shopping_list[key] += 1
	end

	def show
		@shopping_list.each do |k, v|
			puts "#{v} #{k}:" + " #{@price_list[k]*v}"
		end
	end

	def cost
		total = 0
		@shopping_list.each do |k, v|
			total += @price_list[k]*v
		end
		puts "Your total is #{total}"
	end
end




cart = ShoppingCart.new
cart.add_to_cart :apple
cart.add_to_cart :apple
# cart.add_to_cart :oranges
# cart.add_to_cart :grapes
cart.add_to_cart :banana
# cart.add_to_cart :watermelon

cart.show
cart.cost
# cart.count_hash

# class Item
# 	def self.new_item(hash)
# 		@hash = hash
# 	end
# end

# cart.add_to_cart(Item.new_item(Apple: 10))
# cart.add_to_cart(Item.new_item(Apple: 10))
# cart.add_to_cart(Item.new_item(Oranges: 5))
# cart.add_to_cart(Item.new_item(Grapes: 15))
# cart.add_to_cart(Item.new_item(Bananas: 20))
# cart.add_to_cart(Item.new_item(Watermelons: 50))

# 	def cost
# 		value_array = []
# 		@contents.each do |k, v|
# 				value_array << v
# 			end
# 		total = value_array.reduce(0) do |sum, n|
# 			sum + n
# 		end
# 		puts total
# 	end

# 	def count_hash
# 		@count_hash = Hash.new(0)
# 		@contents.each do |k, v|
# 			@count_hash[k] += 1
# 		end
# 		puts @count_hash
# 	end
	
# end

