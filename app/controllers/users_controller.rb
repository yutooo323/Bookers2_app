class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user = current_user.id
  end
  
  def index
    @users = User.all
  end
  
  def edit
  end
  
  
end
