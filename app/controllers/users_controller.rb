class UsersController < ApplicationController
    
  def index
    @daters = Dater.where.not(id: current_user.id)
  end

  def edit
    @user  = current_user
  end

  def update
    user  = current_user
    user.update(user_params)
    redirect_to user_path(user)
  end

  
  def show
    @user = User.find(params[:id])
    @dater = @user.daters.first
  end


  def user_params
    params.require(:user).permit(:f_name, :l_name, :image)
  end

end
  