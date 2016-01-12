class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to @user, notice: "You have created an account."
      else
        render action: "new"
      end
  end
  
  def new
    @user = User.new
  end
  
  private
  
  def user_params
    params.require(:user).permit(:username, :password)
  end

end