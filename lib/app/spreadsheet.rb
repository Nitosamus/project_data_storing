require "google_drive"
require "pry"
require "json"




def save_as_spreadsheet

 # "client_id": "409620675214-p75mj8j5glhmuv142rip6k047ukudijm.apps.googleusercontent.com",
  #{}"client_secret": "fi48yQ6gXSwju6V1UEaOTkIu"
#}

	session = GoogleDrive::Session.from_config("config.json")
	session.files.each do |file|
		p file.title
	end

	session.upload_from_file("db/email.json", "email.json", convert: true)

	file = session.file_by_title("email.json")
	file.download_to_file("db/email.json")
	file.update_from_file("db/email.json")

	first_ws = session.spreadsheet_by_key("1VzzqSP1DHSn-JF2BDHh7TDxHRe-RzyK0j20aVoCZn8A").worksheets[0]

	json_file = File.read("db/email.json")
	object = JSON.parse(json_file)
	puts object

	i = 1
	object.each do |key| 
		key.each do |clef, valeur|
	 
		first_ws[i,1] = clef
		first_ws[i,2] = valeur
			i +=1

		end 
	end
	first_ws.save
end



