require 'nokogiri'
require 'mechanize'
require 'mechanize_adapter'
require 'active_support/core_ext'

class Crawler
	include MechanizeAdapter

	def crawl(url)
		agent = Mechanize.new
		agent.agent.http.verify_mode = OpenSSL::SSL::VERIFY_NONE
		blog_page = agent.get(url)

		current_page = 1
		while current_page < 5
			puts blog_page.extract('.b-post a')

			next_page_url = blog_page.extract('a.older_posts', attr: :href)
			blog_page = agent.get(next_page_url)

			current_page += 1
		end
	end
end