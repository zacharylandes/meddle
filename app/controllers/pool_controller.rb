

class PoolController < ApplicationController
  def index 
  end

    def update
      match = User.find(params[:id])
      new_match  =  Match.find_by(dater_id: current_user.id, match_id: match.id)
      if new_match.nil?
        Match.create(dater_id: current_user.id, match_id: match.id)
        flash[:notice] =  "#{match.f_name} was added to your pool!"
        redirect_to user_path(match)
        
      else
        flash[:notice] =  "#{match.f_name} is already in your pool!"
        redirect_to user_path(match)
      end
    end

  end
  