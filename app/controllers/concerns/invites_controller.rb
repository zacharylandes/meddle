class InvitesController < ApplicationController

  def show
    #  
    if params[:email]
      UserMailer.dater_requests_backer(params[:email])
      redirect_to "/dashboard/#{current_user.id}?tab=dater"

    elsif params[:f_name]

      redirect_to dashboard_path(current_user)
    else
      render file: 'public/404.html'
    end

  end

end
