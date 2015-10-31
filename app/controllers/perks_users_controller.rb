class PerksUsersController < ApplicationController
  before_action :set_perks_user, only: [:show, :edit, :update, :destroy]

  # GET /perks_users
  # GET /perks_users.json
  def index
    @perks_users = PerksUser.all
  end

  # GET /perks_users/1
  # GET /perks_users/1.json
  def show
  end

  # GET /perks_users/new
  def new
    @perks_user = PerksUser.new
  end

  # GET /perks_users/1/edit
  def edit
  end

  # POST /perks_users
  # POST /perks_users.json
  def create
    @perks_user = PerksUser.new(perks_user_params)

    respond_to do |format|
      if @perks_user.save
        format.html { redirect_to @perks_user, notice: 'Perks user was successfully created.' }
        format.json { render :show, status: :created, location: @perks_user }
      else
        format.html { render :new }
        format.json { render json: @perks_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perks_users/1
  # PATCH/PUT /perks_users/1.json
  def update
    respond_to do |format|
      if @perks_user.update(perks_user_params)
        format.html { redirect_to @perks_user, notice: 'Perks user was successfully updated.' }
        format.json { render :show, status: :ok, location: @perks_user }
      else
        format.html { render :edit }
        format.json { render json: @perks_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perks_users/1
  # DELETE /perks_users/1.json
  def destroy
    @perks_user.destroy
    respond_to do |format|
      format.html { redirect_to perks_users_url, notice: 'Perks user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perks_user
      @perks_user = PerksUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perks_user_params
      params[:perks_user]
    end
end
