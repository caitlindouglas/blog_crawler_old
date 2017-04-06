require 'nokogiri'
require 'mechanize'
require 'mechanize_adapter'
require 'active_support/core_ext'
require 'pry-byebug'

class Crawler
	include MechanizeAdapter

	def crawl(url)
		agent = Mechanize.new
		agent.agent.http.verify_mode = OpenSSL::SSL::VERIFY_NONE
		blog_page = agent.get(url)

		puts blog_page.title
	end
end