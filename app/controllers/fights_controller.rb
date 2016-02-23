class FightsController < ApplicationController
  before_action :set_fight, only: [:show, :edit, :update, :destroy]

  # GET /fights
  # GET /fights.json
  def index
    @fights = Fight.all
  end

  # GET /fights/1
  # GET /fights/1.json
  def show

  end
  # GET /fights/new
  def new
   
   @fight = Fight.new
   
 end

  # GET /fights/1/edit
  def edit
  end

  # POST /fights
  # POST /fights.json
  def create
    if (params[:fight][:user1]) != (params[:fight][:user2])
      user1 = User.find(params[:fight][:user1])
      user2 = User.find(params[:fight][:user2])
      @fight = Fight.new
      @fight.users << user1
      @fight.users << user2

		if (user1.level + (user1.exp/2)) == (user2.level + (user2.exp/2))
       @fight.winner = nil
		end
		if (user1.level + (user1.exp/2)) > (user2.level + (user2.exp/2)) 
       @fight.winner=user1.id
		end
		if (user1.level + (user1.exp/2)) < (user2.level + (user2.exp/2))
      @fight.winner=user2.id 
		end
    

		respond_to do |format|
		if @fight.save
      format.js 
		end
	end
	else
	redirect_to root_url 
	end
	end

  # PATCH/PUT /fights/1
  # PATCH/PUT /fights/1.json
  def update
    respond_to do |format|
      if @fight.update(fight_params)
        format.html { redirect_to @fight, notice: 'Fight was successfully updated.' }
        format.json { render :show, status: :ok, location: @fight }
      else
        format.html { render :edit }
        format.json { render json: @fight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fights/1
  # DELETE /fights/1.json
  def destroy
    @fight.destroy
    respond_to do |format|
      format.html { redirect_to fights_url, notice: 'Fight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fight
      @fight = Fight.find(params[:id])
    end
    

    # Never trust parameters from the scary internet, only allow the white list through.
    # def fight_params
      # params.require(:fight).permit(:user1, :user2)
    # end
  end
