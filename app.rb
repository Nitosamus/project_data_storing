require "bundler"
Bundler.require

require_relative "lib/app/email"
require_relative "lib/app/spreadsheet"
require_relative "lib/app/mairies"
require_relative "lib/app/csvstore"


system("clear")


#file_json = Email.new
#puts file_json.final_array

#puts final_array
#puts save_as_json
puts save_as_csv
#puts save_as_spreadsheet


