#class CsvStore

require "csv"

def save_as_csv
	my_obj = final_array
	CSV.open("db/emails.csv", "w") do |csv|
		my_obj.length.times do |k|
			my_obj[k].each do |keys, values|
			csv << ["#{keys}", "#{values}"]
			end	
		end
	end

end

#end