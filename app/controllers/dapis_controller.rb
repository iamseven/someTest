class DapisController < ApplicationController
  after_action :set_dapi, only: [:show]
  

  # GET /dapis
  # GET /dapis.json
  def index
  require 'json'
  
  AllgetsController.SetDefault(params[:query])
  AllgetsController.GetMembershipId()
  
  ##############Get Profile/clan ##########################
  @getProfile= AllgetsController.GetProfile()
  @getGroupID=AllgetsController.GetGroupID()
  
  ##############Get Character IDs/toons ##########################
  @arrayOfCharId = []
  @arrayOfCharId = AllgetsController.GetAllCharacterID()
  
  #Array of all toon for member
  @arrayOfCharacters = []
  @arrayOfCharacters = AllgetsController.GetCharacterID1()
  
  
  ################Disabled API Call #########################
  #@getActivityHistory = AllgetsController.GetActivityHistory()
  
 
  ################Debug section##############################disable when complete
  #puts @arrayOfCharacters
  #@getCharacterID2 = AllgetsController.GetCharacterID2()
  #@getCharacterID3 = AllgetsController.GetCharacterID3()
  
  
  
  #AllgetsController.GetCharacterStats()
  
  
  # @getAllCharacterID.each do |g|
  #puts g
  
  #end
  
  #getProfile()
  #getGroupID()
  #getGroupActivity()
  
  
  
  #puts hashConvert('4898834093')
  #matchMembership()
  
  #destinyRaceDefinition()
  
  
  
  end

private

#def getMembershipId()
#   require 'json'
#     query = "https://www.bungie.net/Platform/Destiny2/SearchDestinyPlayer/-1/" + @memberName + "/"
#   @getMembershipId=JSON.parse(getResponse(query))['Response'][0]['membershipId']
#end



  # GET /dapis/1
  # GET /dapis/1.json
  def show
   
  end

  # GET /dapis/new
  def new
    @dapi = Dapi.new
  end

  # GET /dapis/1/edit
  def edit
  end

  # POST /dapis
  # POST /dapis.json
  def create
    @dapi = Dapi.new(dapi_params)

    respond_to do |format|
      if @dapi.save
        format.html { redirect_to @dapi, notice: 'Dapi was successfully created.' }
        format.json { render :show, status: :created, location: @dapi }
      else
        format.html { render :new }
        format.json { render json: @dapi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dapis/1
  # PATCH/PUT /dapis/1.json
  def update
    respond_to do |format|
      if @dapi.update(dapi_params)
        format.html { redirect_to @dapi, notice: 'Dapi was successfully updated.' }
        format.json { render :show, status: :ok, location: @dapi }
      else
        format.html { render :edit }
        format.json { render json: @dapi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dapis/1
  # DELETE /dapis/1.json
  def destroy
    @dapi.destroy
    respond_to do |format|
      format.html { redirect_to dapis_url, notice: 'Dapi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dapi
    params.permit(:query)
    end

   
end
