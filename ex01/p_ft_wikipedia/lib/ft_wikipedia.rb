require "colorize"

class Ft_wikipedia
	def initialize
	end
	def self.find_in(url)

		html = open(url)
		doc = Nokogiri::HTML(html.read)
		doc.encoding = 'utf-8'
		if url.equal("https ://en.wikipedia.org/wiki/Philosophy")
			return
		end
	end
	def self.search(name)
		if name == "The Ultimate Question of Life, the Universe and Everything"
		  puts "First search @ :#{url}"
		end
		# encoding: UTF-8
		require 'nokogiri'
		require 'open-uri'

		h52 = doc.css('h5')[1].text
		puts h52, h52.encoding, h52 == "Genealogía de Jesucristo"
		#=> Genealogía de Jesucristo
		#=> UTF-8
		#=> true
	end
end

# https://stackoverflow.com/questions/2572396/nokogiri-open-uri-and-unicode-characters