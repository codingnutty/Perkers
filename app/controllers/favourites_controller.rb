class FavouritesController < ApplicationController
   before_action :set_favourite, only: [:show, :edit, :update, :destroy]
  def index
    @user = current_user
    @favourites = @user.favourites.all
  end

  def show
    # @perk = Perk.find(params[:id])
    # @favourites = Favourite.find_by(:perk_id => params[:id])
    # @user = @favourites.user_id
  end

  # GET /perks/new
  def new
    # @perk = Perk.new
  end

  # GET /perks/1/edit
  def edit
  end

  # POST /favourites
  # POST /favourites.json
  def create
    @perk = Perk.find(params[:perk_id])
    # current_user.favourites << @perk
    @favourite = Favourite.new(:perk_id => @perk.id, :user_id => current_user.id)
    respond_to do |format|
      if @favourite.save
        format.html { redirect_to '/perks', notice: "You just favourited the perk #{@perk.title}"}
        format.json { render :show, status: :created, location: @favourite }
      else
        # redirect_to @perks, notice: "Your favourite could not be stored"
        format.html { render :new }
        format.json { render json: @favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favourites/1
  # DELETE /favourites/1.json
  def destroy
     @perk = Perk.find(params[:perk_id])
     favourite = Favourite.find_by(:perk_id => params[:perk_id])
     favourite.destroy
    #  current_user.favourites.destroy(@perk)
    # favourite = Favourite.find(params[:id])
    # favourite.destroy
    # redirect_to favourites_path :notice => "You destroyed a favourite"
    # @favourite.destroy
    # respond_to do |format|
    #   format.html { redirect_to favourites_url, notice: 'Favourite was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
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
