require 'nokogiri'
require 'mechanize'

class Crawler
	def crawl(url)
		agent = Mechanize.new
		agent.agent.http.verify_mode = OpenSSL::SSL::VERIFY_NONE

		blog_page = agent.get(url)

		puts blog_page.title
	end
end