class PerksController < ApplicationController
  before_action :set_perk, only: [:show, :edit, :update, :destroy]

  # GET /perks
  # GET /perks.json
  def index
    @perks = Perk.all
    @user = current_user
    @user_perks = @user.perks.all

    # if request.xhr?
    #   @perks = Perk.all.order(created_at: :desc)
    #   render '_allperks.json', layout: false
    # else
    #   render 'index'
    # end
  end
  # GET /perks/1
  # GET /perks/1.json
  def show
    @perk = Perk.find(params[:id])
    @brand = Brand.find_by(:id => @perk.brand_id)
    @favourites = Favourite.find_by(:perk_id => params[:id])
  end

  # GET /perks/new
  def new
    @perk = Perk.new
  end

  # GET /perks/1/edit
  def edit
  end

  # POST /perks
  # POST /perks.json
  def create
    @brands = Brand.all
    @user = current_user
    @perk = @user.perks.new(perk_params)
    @favourites = @perk.favourites.all.order(created_at: :desc)
    respond_to do |format|
      if @perk.save
        format.html { redirect_to @perk, notice: 'Perk was successfully created.' }
        format.json { render :show, status: :created, location: @perk }
      else
        format.html { render :new }
        format.json { render json: @perk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perks/1
  # PATCH/PUT /perks/1.json
  def update

    respond_to do |format|
      if @perk.update(perk_params)
        format.html { redirect_to @perk, notice: 'Perk was successfully updated.' }
        format.json { render :show, status: :ok, location: @perk }
      else
        format.html { render :edit }
        format.json { render json: @perk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perks/1
  # DELETE /perks/1.json
  def destroy
    @perk.destroy
    respond_to do |format|
      format.html { redirect_to perks_url, notice: 'Perk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perk
      @perk = Perk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perk_params
       params.require(:perk).permit(:title, :discount, :address, :city, :state, :zipcode, :user_id, :time_start, :time_end, :brand_id)
    end


end
