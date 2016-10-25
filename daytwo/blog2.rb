require 'date'

class Blog
	def initialize
		@array = []
	end

	def add_post(post)
		@array << post
	end

	def sort_date
		@array = @array.sort_by { |e| e.date }.reverse
	end

	def publish_front_page
		sort_date
		@array.map { |e| puts "#{e.title}\n*****\n#{e.text}\n-----" }
		
	end

	
end

class Post
	attr_accessor :title, :date, :text, :sponsored
	def initialize(title, date, text, sponsored)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end

	def title
		if @sponsored == true
			@title = "***#{@title}***"
		else
			@title = @title
		end
	end
end




blog = Blog.new
blog.add_post(Post.new("Hello", DateTime.new(2016,4,1), "How are you", true))
blog.add_post(Post.new("Goodbye", DateTime.new(2016,1,1), "Go f**k yourself", false))
blog.add_post(Post.new("Pizza", DateTime.new(2016,2,1), "I like Pizza", true))

blog.publish_front_page