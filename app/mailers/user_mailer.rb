class UserMailer < ApplicationMailer
  default from: "pytdating@gmail.com"

  def dater_requests_backer(current_user, email_new_user)
    @email_new_user = email_new_user
    @current_user = current_user
    @url  = "localhost:3000/auth/google_oauth2?tab=backer&user_id=#{current_user.id}" #this link should hav some sort of link that takes the user to the site and connects them automatically to the dater
    # mail(to: @email_new_user, subject: "#{@current_user.f_name} would like to connect with you! ANOTHER TEST")

    mg_client = Mailgun::Client.new ENV['api_key']
    message_params = {:from    => ENV['gmail_username'],
                      :to      => @email_new_user,
                      :subject => "#{@current_user.f_name} would like to connect with you!",
                      :html    => render_to_string(template: "../views/user_mailer/dater_requests_backer.html.erb").to_str,
                      :text    => render_to_string(template: "../views/user_mailer/dater_requests_backer.text.erb").to_str
                      }
    mg_client.send_message ENV['domain'], message_params
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
