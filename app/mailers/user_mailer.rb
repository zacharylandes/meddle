class UserMailer < ApplicationMailer

  def dater_requests_backer(current_user, email)
binding.pry
    @current_user = current_user
    @url  = "" #this link should hav some sort of link that takes the user to the site and connects them automatically to the dater
    mail(to: email, subject: "#{@current_user.f_name} would like to connect with you!")
  end



end
