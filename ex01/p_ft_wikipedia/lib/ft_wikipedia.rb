require 'nokogiri'
require 'open-uri'

class Ft_wikipedia
	
	@@nlink = 0
	@@ary = Array.new
	

	def initialize
		
	end
	
	def self.search(name)
		
		@@nlink += 1
		@@ary.push(name)
		#@@lang = "en"
		
		#p @@nlink
		url = "https://wikipedia.org/wiki/" + name
		if @@nlink == 1
			puts "First search @ :#{url}"
		else
			puts "#{url}"
		end

		html = open(url)
		doc = Nokogiri::HTML(html)
		doc.encoding = 'utf-8'
		# open and write to a file with ruby
		File.open('yourfile', 'w') { |f|
			f.write(doc.css("html"))
		}
		
		if @@nlink == 1
			p "lannggggg"
			@@lang = doc.css("html")["lang"]
			@@lang.each do |elem| 
				puts elem
			end
		end
		#p "lang:"
		p @@lang

		# To do:
		# 0) Need to check and work on standard error for "Effects_of_blue_lights_technology"
		# 1) un article disponible sur Wikipedia
		# 2) Gestion des langues sur page suivante/preced (en)
		# 3) test for names: "directory", "problem", "einstein", "kiss", "matter"...
	
		n = 0
		p "a"
		href = doc.css("div.mw-parser-output p a")[n]["href"]
		while href[0] == "#"
			n = n+1
			href = doc.css("div.mw-parser-output p a")[n]["href"]
		end
		if href.include? "/wiki/" == false
			p "The link should only be to wikipedia"
			exit
		end
		p "b"
		word = doc.css("div.mw-parser-output p a")[n]["title"]
		#p word.instance_of? String
		#p word
		word = word.gsub(/\s+/, '_')

		if @@ary.include? word
			p "Loop detected there is no way to philosophy here"
			p word + " found here in array:"
			@@ary.each do |elem| 
				puts elem
			end
			return
		end
		p "c"
		begin
			if @@nlink <= 35 && word != "Philosophy"
				search(word)
			end
		rescue StandardError => e
			p "Dead end page reached"
			# Only your app's exceptions are swallowed. Things like SyntaxErrror are left alone. 
		end
		p "d"
		#if url.equal("https://en.wikipedia.org/wiki/Philosophy")
			#return
		#end
		#puts "end of the search"

		return @@nlink
		#puts doc, doc.encoding, doc == "Genealogía de Jesucristo"

		# http://ruby.bastardsbook.com/chapters/html-parsing/
		#puts h52, h52.encoding, h52 == "Genealogía de Jesucristo"
	end
end

# https://nokogiri.org/
# https://stackoverflow.com/questions/2572396/nokogiri-open-uri-and-unicode-characters

