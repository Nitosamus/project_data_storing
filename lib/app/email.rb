
require "json"
require "pry"
require "nokogiri"
require "open-uri"

#require_relative "mairies"



def save_as_json
		my_object = final_array
		json_file = File.open("db/email.json", "w") do |f1|
			f1.write(JSON.pretty_generate(my_object))
			f1.close
		end 
		json_file = File.open("db/email.json", "r") do |f2|
		end	
 return my_object.to_json
end







