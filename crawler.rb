class Crawler
	def crawl
		blogs = ['blog1', 'blog2', 'blog3', 'blog4']
		
		blogs.each do |blog_name|
			# puts blog_name
		end

		entry = BlogEntry.new
		entry.author = 'Tash'
		entry.title = 'Best of Liberty Station'

		puts "#{entry.author} is the #{entry.title}!!!"
	end
end