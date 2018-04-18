class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :current_dater, :slider_colors, :current_backer, :inches_feet, :feet_inches

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def current_dater
      current_user.daters.first if current_user
    end

    def current_backer
      current_user.backers.first if current_user
  end

  def slider_colors 
    ['#70C1B3','#91B7C7','#BD9391','#75485E']
  end

  def feet_inches(ft,inch)
    ft = (ft.to_i * 12)
    inch = inch.to_i 
    p inch + ft
  end

end
