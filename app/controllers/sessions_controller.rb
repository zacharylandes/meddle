class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(request.env["omniauth.auth"])
  
      session[:user_id] = user.id
      puts request.env['omniauth.params']['tab']
      redirect_to dashboard_path(user, tab: request.env['omniauth.params']['tab'])
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
