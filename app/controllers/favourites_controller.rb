class FavouritesController < ApplicationController
   before_action :set_favourite, only: [:show, :edit, :update, :destroy]

  # GET /favourites
  # GET /favourites.json
  def index
    @user = current_user
    @favourites = @user.favourites.all
    @perks = Perk.all
  end


  # POST /favourites
  # POST /favourites.json
  def create
    @perk = Perk.find(params[:perk_id])
    @favourite = Favourite.new(:perk => @perk, :user => current_user)
    respond_to do |format|
      if @favourite.save
          format.html { redirect_to '/perks', notice: "You just favourited the perk #{@perk.title}", layout:false}
          format.json { render :show, status: :created, location: @favourite }
      else
          format.html {redirect_to '/perks', notice: "unable to favourite"}
          format.json { render json: @favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favourites/1
  # DELETE /favourites/1.json
  def destroy
    favourite = Favourite.find(params[:id])
    favourite.destroy
    respond_to do |format|
      format.html { redirect_to '/perks', notice: 'You just unfavourited.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favourite
      @favourite = Favourite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favourite_params
      params[:favourite]
    end
end
