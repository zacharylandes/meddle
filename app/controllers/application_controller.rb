class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :current_dater, :inches_feet, :feet_inches

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_dater
     current_user.daters.first if current_user
  end


  def inches_feet(inches)
    mod = inches%12
    inch = mod.to_s.split('')
      if inch.length == 1 
        inch.unshift('0')
      end
      inch = inch.join('')
    p "#{inches/12}ft #{inch}in"
  end

  def feet_inches(ft,inch)
    ft = (ft.to_i * 12)
    inch = inch.to_i 
    p inch + ft
  end


end
