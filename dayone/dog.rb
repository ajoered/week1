class Dog

attr_accessor :name, :breed

attr_writer :sound

	def initialize(name, breed, sound = "Woof!") #By default the sound will be "Woof!"
		@name = name
		@breed = breed
		@sound = sound
		@@number_of_dogs ||= 0 #if there's no dogs it assigns a 0
		@@number_of_dogs += 1
	end

	def bark
		puts @sound
	end

	def track
		puts "Sniff.."
	end

	def berserk
		puts @sound + " " + @sound + " " + @sound + " " + @sound + " " + @sound
	end

	def self.num_dogs # This is a variable method (use keyword "self")
		puts "There are #{@@number_of_dogs} dogs"
	end

	def smell(person)
		file = File.open(@name+".txt", "a")
		file.puts person
		file.close
	end

	def people_smelled
		file = File.open(@name+".txt", "r")
		people = file.readlines
		file.close
		people
	end

end


class Hound < Dog

	attr_accessor :animal

	def initialize(name, breed, sound, animal)
		super(name, breed, sound) #gets the three variables from the parent class "Dog"
		@animal = animal
	end

	def roll
		puts "roll.. roll.."
	end

	def track
		puts "Snifff.. snifff.. snifff..!"
		super #calls the method as defined in the parent, Dog
	end
end

class PetDog < Dog

	attr_accessor :owner

	def initialize(name, breed, sound, owner)
		super(name, breed, sound)
		@owner = owner
	end

	def fetch_toy(toy)
		puts "You threw a #{toy}! I'll go get it!"
		bark
		bark
		bark
	end

end




pepe = Dog.new("Pepe", "Labrador")
scooby = Hound.new("Scooby", "Bloodhound", "WOOF!", "Fox")
weiney = PetDog.new("weiney", "Weiner Dog", "whhhhhaaa", "Paquita")

pepe.bark
pepe.berserk
pepe.track

scooby.bark
scooby.berserk
scooby.track
scooby.roll

weiney.fetch_toy("ball")

puts weiney.owner
weiney.owner = "Pepa"
puts weiney.owner

pepe.smell("Luis")
pepe.people_smelled

Dog.num_dogs


=begin	
rescue public: Available outside of the class. Interface of the object. Default for all methods.
private: only accessible by the object's own instance methods
protected: Available from instances of that class or its descendants 	
=end
