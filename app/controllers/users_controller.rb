class UsersController < ApplicationController

  # GET /users
  # GET /users.json

  before_filter :authenticate_user!
  before_filter :signed_in_user, :only=> [:index, :edit, :update]

#  before_filter :current_user, :only=> [:index, :edit, :update]
  #before_filter :admin_user, :only=> :destroy


  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end


private

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, :notice=> "Please sign in."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

#    def admin_user
#      redirect_to(root_path) unless current_user.admin?
#    end
end
