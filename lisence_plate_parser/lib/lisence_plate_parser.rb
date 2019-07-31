require "lisence_plate_parser/version"
require 'json'

module LisencePlateParser
  class Error < StandardError; end
  

  class Plate
  	def self.parse(plate)
  		plates = JSON.parse(File.read('lib/plate_list.json'))
  		city_hash = plates.select{|p| p['plaka'] == plate.to_i}
  		
  		
  		if city_hash.any?
  			city_hash.first['il']
  		else
  		 'Bilmiyorum'
  		end
  	end
  end
end
