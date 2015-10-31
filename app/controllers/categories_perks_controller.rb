class CategoriesPerksController < ApplicationController
  before_action :set_categories_perk, only: [:show, :edit, :update, :destroy]

  # GET /categories_perks
  # GET /categories_perks.json
  def index
    @categories_perks = CategoriesPerk.all
  end

  # GET /categories_perks/1
  # GET /categories_perks/1.json
  def show
  end

  # GET /categories_perks/new
  def new
    @categories_perk = CategoriesPerk.new
  end

  # GET /categories_perks/1/edit
  def edit
  end

  # POST /categories_perks
  # POST /categories_perks.json
  def create
    @categories_perk = CategoriesPerk.new(categories_perk_params)

    respond_to do |format|
      if @categories_perk.save
        format.html { redirect_to @categories_perk, notice: 'Categories perk was successfully created.' }
        format.json { render :show, status: :created, location: @categories_perk }
      else
        format.html { render :new }
        format.json { render json: @categories_perk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories_perks/1
  # PATCH/PUT /categories_perks/1.json
  def update
    respond_to do |format|
      if @categories_perk.update(categories_perk_params)
        format.html { redirect_to @categories_perk, notice: 'Categories perk was successfully updated.' }
        format.json { render :show, status: :ok, location: @categories_perk }
      else
        format.html { render :edit }
        format.json { render json: @categories_perk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories_perks/1
  # DELETE /categories_perks/1.json
  def destroy
    @categories_perk.destroy
    respond_to do |format|
      format.html { redirect_to categories_perks_url, notice: 'Categories perk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categories_perk
      @categories_perk = CategoriesPerk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categories_perk_params
      params[:categories_perk]
    end
end
