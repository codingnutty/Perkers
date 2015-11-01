class PerkCategoriesController < ApplicationController
  before_action :set_perk_category, only: [:show, :edit, :update, :destroy]

  # GET /perk_categories
  # GET /perk_categories.json
  def index
    @perk_categories = PerkCategory.all
    @categories = Category.all
    @perks = Perk.all
  end

  # GET /perk_categories/1
  # GET /perk_categories/1.json
  def show
    @perk_category = PerkCategory.find(params[:id])
    @perk_brand = Perk.find(:brand_id => @perk_category.perk.brand_id)
  end

  # GET /perk_categories/new
  def new
    @perk_category = PerkCategory.new
  end

  # GET /perk_categories/1/edit
  def edit
  end

  # POST /perk_categories
  # POST /perk_categories.json
  def create
    @perk_category = PerkCategory.new(perk_category_params)

    respond_to do |format|
      if @perk_category.save
        format.html { redirect_to @perk_category, notice: 'Perk category was successfully created.' }
        format.json { render :show, status: :created, location: @perk_category }
      else
        format.html { render :new }
        format.json { render json: @perk_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perk_categories/1
  # PATCH/PUT /perk_categories/1.json
  def update
    respond_to do |format|
      if @perk_category.update(perk_category_params)
        format.html { redirect_to @perk_category, notice: 'Perk category was successfully updated.' }
        format.json { render :show, status: :ok, location: @perk_category }
      else
        format.html { render :edit }
        format.json { render json: @perk_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perk_categories/1
  # DELETE /perk_categories/1.json
  def destroy
    @perk_category.destroy
    respond_to do |format|
      format.html { redirect_to perk_categories_url, notice: 'Perk category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perk_category
      @perk_category = PerkCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perk_category_params
      params[:perk_category]
    end
end
