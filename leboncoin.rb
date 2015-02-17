require 'open-uri'
require 'nokogiri'

html_file = open("http://www.leboncoin.fr/annonces/offres/ile_de_france/?q=treteau")
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.lbc').each do |element|
    puts element.search('.title').inner_text
    puts  element.search('.category').inner_text
    puts element.search('.price').inner_text
end