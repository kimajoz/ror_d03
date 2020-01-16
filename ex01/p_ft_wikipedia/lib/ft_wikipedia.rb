require 'nokogiri'
require 'open-uri'

class Ft_wikipedia
	def initialize
	end
	
	def self.search(name)
		url = "https://en.wikipedia.org/wiki/" + name
		puts "First search @ :#{url}"
		html = open(url)
		doc = Nokogiri::HTML(html.read)
		doc.encoding = 'utf-8'
		#h52 = doc.css('h5')[1].text
		puts "test 2"
		word = doc.css("div.mw-parser-output p a")[0]
		word = word.gsub(/\s+/, '_')
		puts word
		puts "test 3"
		if word != "Philosophy"
			search(word)
		end
		puts "end of the search"
		#puts doc, doc.encoding, doc == "Genealogía de Jesucristo"

		# http://ruby.bastardsbook.com/chapters/html-parsing/
		#puts h52, h52.encoding, h52 == "Genealogía de Jesucristo"
		#if url.equal("https ://en.wikipedia.org/wiki/Philosophy")
			#return
		#end
	end
end

# https://nokogiri.org/
# https://stackoverflow.com/questions/2572396/nokogiri-open-uri-and-unicode-characters

