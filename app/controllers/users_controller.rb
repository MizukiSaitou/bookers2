class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
   @user = User.current_user
   redirect_to book_user_path
  end
end
