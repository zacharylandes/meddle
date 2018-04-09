class UserMailer < ApplicationMailer

  def dater_requests_backer(current_user, email_new_user)
# binding.pry
    @email_new_user = email_new_user
    @current_user = current_user
    @url  = "" #this link should hav some sort of link that takes the user to the site and connects them automatically to the dater
    mail(to: @email_new_user, subject: "#{@current_user.f_name} would like to connect with you! ANOTHER TEST")

    # mg_client = Mailgun::Client.new ENV['api_key']
    # message_params = {:from    => ENV['gmail_username'],
    #                   :to      => @email_new_user,
    #                   :subject => "#{@current_user.f_name} would like to connect with you! ANOTHER TEST"}
    # mg_client.send_message ENV['domain'], message_params
  end

  # def sample_email(user)
  #   @user = user
  #   mg_client = Mailgun::Client.new ENV['api_key']
  #   message_params = {:from    => ENV['gmail_username'],
  #                     :to      => @user.email,
  #                     :subject => 'Sample Mail using Mailgun API',
  #                     :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
  #   mg_client.send_message ENV['domain'], message_params
  # end


end
