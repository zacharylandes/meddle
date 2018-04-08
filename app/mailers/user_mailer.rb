class UserMailer < ApplicationMailer

  def dater_requests_backer(user)
    @user = user
    @url  = 'http://localhost:3000/'
    mail(to: @user.email, subject: '#{@user.f_name} would like to connect with you!')
  end

  def backer_requests_dater(user)
    @user = user
    @url  = 'http://localhost:3000/'
    mail(to: @user.email, subject: '#{@user.f_name} would like to connect with you!')
  end


end
