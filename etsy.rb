require "open-uri"
require "nokogiri"

puts "Which product?"
product = gets.chomp

file = open("https://www.etsy.com/search?q=#{product}")

doc = Nokogiri::HTML(file)

doc.search('.listing-detail').each do |element|
  p element.search(".title").text
  p element.search(".currency-value").text
  p element.search(".currency-code").text
  puts "-" * 20
end