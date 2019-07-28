require "rubygems"
require "nokogiri"
require "open-uri"
require "pry"


def get_townhall_list
		array_for_list_townhall = []
		townhall_page = Nokogiri::HTML(open('https://www.annuaire-des-mairies.com/val-d-oise.html'))

		townhall_page.xpath('//a[@class ="lientxt"]').each do |names|
			puts names.text
			array_for_list_townhall << names.text
		end

		return array_for_list_townhall
		
end

puts get_townhall_list



