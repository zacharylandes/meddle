class UsersController < ApplicationController
    
  def index
    @daters = Dater.all
  end
  
  
  def show
      @user = User.find(params[:id])
  end

end
  