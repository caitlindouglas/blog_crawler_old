require './crawler.rb'
require './blog_entry.rb'

my_crawler = Crawler.new
my_crawler.say_something ARGV[0]