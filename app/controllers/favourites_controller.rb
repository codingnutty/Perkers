class FavouritesController < ApplicationController
   # protect_from_forgery
   # before_action :set_favourite, only: [:show, :edit, :update, :destroy]
  def index
    # @user = current_user
    # @perks = Perk.all
  end


  # POST /favourites
  # POST /favourites.json
  def create
    # p "*******************"
    # p "I am in create"

    # p "********************"
    # perk = Perk.find(params[:perk_id])
    # Favourite.create(:perk => perk, :user => current_user)
    # redirect_to favourites_path, :notice => "You just favourited the perk #{perk.title}"
    # @favourite = Favourite.new(favourite_params)
    #  p favourite_params
    # respond_to do |format|
    #   if @favourite.save
    #     format.html { redirect_to @favourite, notice: 'Favourite was successfully created.' }
    #     format.json { render :show, status: :created, location: @favourite }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @favourite.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /favourites/1
  # DELETE /favourites/1.json
  def destroy

    favourite = Favourite.find(params[:id])
    favourite.destroy
    redirect_to favourites_path :notice => "You destroyed a favourite"
    # @favourite.destroy
    # respond_to do |format|
    #   format.html { redirect_to favourites_url, notice: 'Favourite was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_favourite
  #     @favourite = Favourite.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def favourite_params
  #     params[:favourite]
  #   end
end
