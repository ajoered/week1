require 'date'

class Blog
	attr_accessor :front_page, :sorted_posts
	def initialize
		@array = []
	end

	def add_post(post)
		@array << post
	end

	def sort_posts
		@array = @array.sort_by{|post| post.date}.reverse
	
	end

	def publish_front_page
		sort_posts
		front_page = @array.map { |post| puts "#{post.title}\n**********\n#{post.text}\n------------" }
		front_page
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
		if @sponsored
			@title = "*****#{@title}*****"
		else
			@title 
		end
	end
end

blog = Blog.new
blog.add_post(Post.new("Hello", DateTime.new(2016,4,1), "How are you", false))
blog.add_post(Post.new("Goodbye", DateTime.new(2016,1,1), "Go f**k yourself", true))
blog.add_post(Post.new("Pizza", DateTime.new(2016,2,1), "I like Pizza", false))

blog.publish_front_page