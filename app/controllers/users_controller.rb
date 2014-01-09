class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)   #check strong parameter
  	if @user.save  # if check parameter is ok, user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user #if user.save is ok, redirect to new page.
  	else
  		render 'new'
  	end
  end
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
