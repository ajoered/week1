# class CommandLine
# 	def initialize(name, password)
# 		@name = name
# 		@password = password
# 	end

# 	def start
# 		puts "Please enter your name:"
# 		@user_name = gets.chomp
# 		puts "please enter your password:"
# 		@user_pass = gets.chomp
# 	end

# 	def prompt
# 		if name = @name && pass = @password
# 			puts "You're in! enter your catchphrase..."
# 			@catch = gets.chomp
# 		else
# 			puts "Invalid entry."
# 		end
# 	end

# end

# class Counter
# 	def initialize(string)
# 		string.length
# 	end
# end



class Authenticator #WHAT DOES MY CLASS DO? IT SHOULD ONLY DO ONE THING
	def self.authenticate(user, password)
		if user == "alvaro" && password == "secret"
			true 
		else
			false
		end
	end
end

class Counter
	def self.count_words(string)
		string.split(" ").length
	end

	def self.count_letters(string)
		string.chars.length
	end
end

class Reverse
	def self.reverse(string)
		string.reverse
	end
end

class Convert
	def self.upper(string)
		string.upcase
	end

	def self.lower(string)
		string.lower
	end
end


class User
	def login
		puts "enter your username:"
		user = gets.chomp
		puts "enter your password"
		password = gets.chomp 
		while !Authenticator.authenticate(user, password)
			puts ">enter your username:"
			user = gets.chomp
			puts ">enter your password"
			password = gets.chomp 
		end
		true
	end
end


if User.new.login
	puts ">Type in some text:"
	text = gets.chomp
	puts ">What do you want to do with your text? PLease choose from: \nCount words \nCount Letters \nReverse \nUpcase \nLowercase"
	answer = gets.chomp
	answer.downcase
		Counter.new.count_words(answer)
end




