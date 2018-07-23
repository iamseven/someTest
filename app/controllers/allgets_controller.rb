class AllgetsController < DapisController
include HTTParty


def self.getQuery (query)
  
    HTTParty.get(query,
                  :headers => {'Accept' => 'application/json',
                               'Content-Type' => 'application/json',
                               'X-API-Key' => ENV['X-API-KEY']
                               }).body
end

def self.SetDefault(param)
  if param.nil?
      @memberName = "Fukadavin"
      #render :html
    else
      url = param
      test= Rack::Utils.parse_nested_query(url)
      @memberName = test["name"]
     
  end
end

##Working
def self.GetMembershipId()
   require 'json'
    query = "https://www.bungie.net/Platform/Destiny2/SearchDestinyPlayer/-1/" + @memberName + "/"
    @getMembershipId = JSON.parse(AllgetsController.getQuery(query))['Response'][0]['membershipId']
end

##Working
def self.GetProfile
  require  'json'
  query = "https://www.bungie.net/Platform/Destiny2/2/Profile/" + @getMembershipId + "/?components=200"
  @getProfile=JSON.pretty_generate(JSON.parse(AllgetsController.getQuery(query))['Response'])
  #hash = JSON.parse(response)['Response']['characters']['raceHash']
  
end



#/Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/
def self.GetCharacterStats
  require 'json'
  
  #@characterId = AllgetsController.GetAllCharacterID
  
  #@characterId.each do |l|
   #    test = l.first
    
     # puts test
     
  #end
  
  #query = "https://www.bungie.net/Platform/Destiny2/2/Account/"+ @getMembershipId+"/Character/"+ @characterId +"/Stats/"
  #@getActivityHistory=JSON.pretty_generate(JSON.parse(AllgetsController.getQuery(query))['Response'])
 
end

##Working
def self.GetGroupID
  require 'json'
  query = "https://www.bungie.net/Platform/GroupV2/User/2/" + @getMembershipId + "/0/1/"
  @getGroupID=JSON.pretty_generate(JSON.parse(AllgetsController.getQuery(query))['Response'])
end

##/Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/Activities/
def self.GetActivityHistory
  require 'json'
  query = "https://www.bungie.net/Platform/Destiny2/2/Account/"+ @getMembershipId + "/Character/2305843009261174417/Stats/Activities/?count=10&mode=4&page=0"
  @getActivityHistory=JSON.pretty_generate(JSON.parse(AllgetsController.getQuery(query))['Response'])
  
end


def self.GetCharacterID1
  require 'json'
  
  arrayCharacter = []
  arrayCharacter = AllgetsController.GetAllCharacterID
  
  allChar = []
  arrayCharacter.each do |l|
  query = "https://www.bungie.net/Platform/Destiny2/2/Account/"+ @getMembershipId +"/Character/"+ l +"/Stats/"
  
  if query.nil?
      allChar.push = 0
      
    else
      allChar.push(JSON.pretty_generate(JSON.parse(AllgetsController.getQuery(query))['Response']))    
  end
  
  #puts l
  #puts allChar
  end
 
 return allChar
end



def self.CharacterHash
  require 'json'
  query = "https://www.bungie.net/Platform/Destiny2/2/Profile/" + @getMembershipId + "/?components=200"
  
   JSON.parse(AllgetsController.getQuery(query))['Response']['characters']['data'].each do |key, object|
   puts key 
   puts object['membershipID']
   puts object['raceHash']
   
   puts object['characterId']
   #puts  JSON.parse(Dapi.SearchRace.to_json)['id']['json']
   
   puts AllgetsController.HashConvert(object['genderHash'])
   end
 
end

def destinyRaceDefinition
  #ActiveRecord::Base.connection.tables.each do |table_name|
  #puts table_name
  #end 
  Dapi.SearchRace
  
end

#Get all toons from members
def self.GetAllCharacterID
 require 'json'
   i=0
   #match_membership = '4611686018445971568'
   query = "https://www.bungie.net/Platform/Destiny2/2/Profile/" + @getMembershipId + "/?components=200"
  
   #@charid=JSON.parse(AllgetsController.getQuery(query))['Response']['characters']['data'].fetch('2305843009261174417')
   objarray = []
   
    JSON.parse(AllgetsController.getQuery(query))['Response']['characters']['data'].each do |key,object|
    objarray.push(object['characterId'])
    end
   
   return objarray
  
end

def self.HashConvert (hash)
  val = hash.to_i;
  if (val && (1 << (32 - 1))) != 0
   val = val - (1 << 32);
  end 
end


end
