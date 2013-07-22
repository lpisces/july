# coding: utf-8
class Cpanel::UsersController < Cpanel::ApplicationController
  before_action :set_cpanel_user, only: [:show, :edit, :update, :destroy]

  # GET /cpanel/users
  # GET /cpanel/users.json
  def index
    @cpanel_users = Cpanel::User.all
  end

  # GET /cpanel/users/1
  # GET /cpanel/users/1.json
  def show
  end

  # GET /cpanel/users/new
  def new
    @cpanel_user = Cpanel::User.new
  end

  # GET /cpanel/users/1/edit
  def edit
  end

  # POST /cpanel/users
  # POST /cpanel/users.json
  def create
    @cpanel_user = Cpanel::User.new(cpanel_user_params)

    respond_to do |format|
      if @cpanel_user.save
        format.html { redirect_to @cpanel_user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cpanel_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @cpanel_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpanel/users/1
  # PATCH/PUT /cpanel/users/1.json
  def update
    respond_to do |format|
      if @cpanel_user.update(cpanel_user_params)
        format.html { redirect_to @cpanel_user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cpanel_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpanel/users/1
  # DELETE /cpanel/users/1.json
  def destroy
    @cpanel_user.destroy
    respond_to do |format|
      format.html { redirect_to cpanel_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpanel_user
      @cpanel_user = Cpanel::User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpanel_user_params
      params.require(:cpanel_user).permit(:name, :nick, :email, :mobile, :avatar)
    end
end
