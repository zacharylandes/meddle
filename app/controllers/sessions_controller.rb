class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(request.env["omniauth.auth"])

    if request.env['omniauth.params']['requestor-dates']
      DaterBacker.create!(dater_id: request.env['omniauth.params']['requestor-dates'], backer_id: user.id)
    elsif request.env['omniauth.params']['requestor-backs']
      DaterBacker.create!(dater_id: user.id, backer_id: request.env['omniauth.params']['requestor-backs'])
    else
    end

    session[:user_id] = user.id
    puts request.env['omniauth.params']['tab']
    redirect_to dashboard_path(user, tab: request.env['omniauth.params']['tab'])

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end

