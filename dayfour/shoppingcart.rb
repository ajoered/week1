class ShoppingCart
	def initialize
		@contents = {}
	end

	def add_to_cart(k, v)
		@contents.push(item)
	end


	def show
		@contents.each do |k, v|
				puts "#{k}: #{v}$"
			end
	end

	class Dictionary
  def initialize
    @hash = {}
  end

  def add(defs)
    defs.each do |word, definition|
      @hash[word] = definition
    end
  end
end

	def cost
		value_array = []
		@contents.each do |item|
			item.each do |k, v|
				value_array << v
			end
		end
		total = value_array.reduce(0) do |sum, n|
			sum + n
		end
		puts total
	end

	def count_hash
			@count_hash = Hash.new(0)
			@contents.each do |item|
				item.each do |k, v|
					@count_hash[k] += 1
					end
				end
			puts @count_hash
	end
end


class Item
	def self.new_item(hash)
		@hash = hash
	end
end

cart = ShoppingCart.new
cart.add_to_cart(Apple: 10)
cart.add_to_cart(Apple: 10)
cart.add_to_cart(Oranges: 5)
cart.add_to_cart(Grapes: 15)
cart.add_to_cart(Bananas: 20)
cart.add_to_cart(Watermelons: 50)


# cart.add_to_cart(Item.new_item(Apple: 10))
# cart.add_to_cart(Item.new_item(Apple: 10))
# cart.add_to_cart(Item.new_item(Oranges: 5))
# cart.add_to_cart(Item.new_item(Grapes: 15))
# cart.add_to_cart(Item.new_item(Bananas: 20))
# cart.add_to_cart(Item.new_item(Watermelons: 50))
cart.show
cart.cost
cart.count_hash
