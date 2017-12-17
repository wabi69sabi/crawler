require 'rubygems'
require "open-uri"
require "nokogiri"
require 'gdbm'

puts "Please enter a url that you want to scrape for links (dont forget http(s):// ):"
target = gets.chomp

doc = Nokogiri::HTML(open(target))

links = doc.css("link")
links_a = doc.css("a")

puts "<link> : #{links.length}"
puts "<a> : #{links_a.length}"

gdbm = GDBM.new("links.db")

links.each_with_index do |link, index|
  puts link['href']
  unless link['href'].nil?
    gdbm[index.to_s] = link['href']
  end
end

links_a.each_with_index do |link, index|
  puts "#{index + 1}. #{link['href']}"
  unless link['href'].nil?
    gdbm[index.to_s] = link['href']
  end
end

gdbm.close
# https://www.icicletech.com/blog/web-scraping-with-ruby-using-mechanize-and-nokogiri-gems
