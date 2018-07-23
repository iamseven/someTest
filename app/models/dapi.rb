class Dapi < ActiveRecord::Base
    include HTTParty
    include JSON
    
    
    def self.SearchRace
       require 'json'
       ActiveRecord::Base.connection.execute("SELECT * FROM DestinyRaceDefinition")
       
       #gsub('=>', ':')
        #test3 = test2.gsub("\\", '')
       
       
    end
    
end
