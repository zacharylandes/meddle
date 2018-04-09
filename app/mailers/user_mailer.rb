class UserMailer < ApplicationMailer

  def dater_requests_backer(email)

    @url  = "" #this link should hav some sort of link that takes the user to the site and connects them automatically to the dater
    mail(to: email, subject: "#{@current_user.f_name} would like to connect with you!")
  end

  def backer_requests_dater(user)
    @user = user
    mail(to: @user.email, subject: '#{@user.f_name} would like to connect with you!')
  end


end
