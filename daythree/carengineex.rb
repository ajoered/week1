class Car
	def initialize(engine, car_sound="WeehBrroommm! ")
		@engine = engine
		@car_sound = car_sound
	end

	def sound
		puts @car_sound + @engine.sound
	end
end

class Engine
	attr_reader :sound
	def initialize(type)
		@type = type
			if @type == "v1"
				@sound = "prrpppprrr..."
			elsif @type == "v8"
				@sound = "Broooom!!"
			elsif @type == "v12"
				@sound = "BROOOOMMMMMMMMM!!!!!!!"
			else
				@sound = "Brooommm"
			end
	end
end

v1 = Engine.new("v1")
v8 = Engine.new("v8")
v12 = Engine.new("v12")

renault4 = Car.new(v1, "ñññ")
camaro = Car.new(v8)
bmwm8 = Car.new(v12)

renault4.sound
camaro.sound
bmwm8.sound

