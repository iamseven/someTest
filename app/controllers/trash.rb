#getcharID(key)
  Array.new(i +=1 ,key)
  #@test = {i +=1 => key}
  
  #@tes.each do |g|
  #puts 
  
  #@allCharacter = @test.to_json
  
  #JSON.parse(@test.to_json)['1']
  
     #end
     
     
     
     
     <div><td class="preBlock"><pre><%  @getAllCharacterID.each do |l|  %>
                                <%= l.first %>
                                <% end %></pre></td></div>
                                
                                
                                
                                def getcharID (key)
 require 'json'
  
  testid = {i +=1 => key}
  
  displayid = testid.to_json
  
  puts displayid
  
     #end
  end
  
   #JSON.pretty_generate(JSON.parse(AllgetsConstroller.getQuery(query))['Response']['characters']['data']).each do |key ,object|
  #getresponse = JSON.pretty_generate(JSON.parse(AllgetsController.getQuery(query))['Response']['characters'])
  #puts getresponse
  
  #@charid=JSON.pretty_generate(JSON.parse(getresponse)['data'].group_by(&:first).map { |k, v| [k, v.map(&:last)] })
   #@charid=JSON.pretty_generate(JSON.parse(getresponse)['data'].group_by { |object| 'object' })
   
   #JSON.parse(AllgetsController.getQuery(query))['Response']['characters']['data'].each do |key ,object|
  
  # @charid =  Array.new(i +=1 , object['membershipID'])
   
   #@charid = JSON.parse(object['characterId'].to_json).group_by {|object| 'object'}
   
   
   
   
   
   #Get First Character Only
def self.GetCharacterID
  require  'json'
  query = "https://www.bungie.net/Platform/Destiny2/2/Profile/" + @getMembershipId + "/?components=200"
  @getProfile=JSON.pretty_generate(JSON.parse(AllgetsController.getQuery(query))['Response'])
  #hash = JSON.parse(response)['Response']['characters']['raceHash']
end


def self.GetCharacterID2
  require 'json'
  
  arrayCharacter = []
  arrayCharacter = AllgetsController.GetAllCharacterID
  
  
   @characterId2 = arrayCharacter[1]
  
  query = "https://www.bungie.net/Platform/Destiny2/2/Account/"+ @getMembershipId+"/Character/"+@characterId2+"/Stats/"
  @getActivityHistory=JSON.pretty_generate(JSON.parse(AllgetsController.getQuery(query))['Response'])
 
end
  
def self.GetCharacterID3
  require 'json'
  
  arrayCharacter = []
  arrayCharacter = AllgetsController.GetAllCharacterID
  
  @characterId3 = arrayCharacter[2]
  
  query = "https://www.bungie.net/Platform/Destiny2/2/Account/"+ @getMembershipId+"/Character/"+@characterId3+"/Stats/"
  @getActivityHistory=JSON.pretty_generate(JSON.parse(AllgetsController.getQuery(query))['Response'])
 
end
  