

class PoolController < ApplicationController

  def index 
  end

  def update
    match = User.find(params[:id])
    new_match  =  Match.find_by(dater_id: current_user.id, match_id: match.id)
    if new_match.nil?
      if params[:searching_for]
        searching_for = User.find(params[:searching_for])
        Match.create(dater_id: searching_for.id, match_id: match.id)
        flash[:notice] =  "#{match.f_name} was added to #{searching_for.f_name}'s pool!"
        redirect_to dashboard_path(current_user)
      else
        Match.create(dater_id: current_user.id, match_id: match.id)
        flash[:notice] =  "#{match.f_name} was added to your pool!"
        redirect_to user_path(match)
      end
    else
      flash[:notice] =  "#{match.f_name} is already in your pool!"
      redirect_to user_path(match)
    end
  end
end
  