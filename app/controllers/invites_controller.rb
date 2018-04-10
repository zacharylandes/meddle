class InvitesController < ApplicationController

  def show
    if params[:email]
      UserMailer.dater_requests_backer(current_user, params[:email]).deliver_now
      render plain: "ok"

    elsif params[:f_name]

      redirect_to dashboard_path(current_user)
    else
      render file: 'public/404.html'
    end

  end

end
