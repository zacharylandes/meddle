# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed
  def self.run
    new.run
  end

  def some_function_to_run

  end

   def create_daters
    dater_1 = User.create!(provider: "google_oauth2", uid: "12345", name: "Susie", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Bobby", l_name:"Smith", email: email1@email.com, image1: nil, image2: nil)

    dater_2 = User.create!(provider: "google_oauth2", uid: "12345", name: "Susie", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Bobby", l_name:"Smith", email: email2@email.com, image1: nil, image2: nil)

    dater_3 = User.create!(provider: "google_oauth2", uid: "12345", name: "Susie", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Bobby", l_name:"Smith", email: email3@email.com, image1: nil, image2: nil)

    dater_4 = User.create!(provider: "google_oauth2", uid: "12345", name: "Susie", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Bobby", l_name:"Smith", email: email4@email.com, image1: nil, image2: nil)

   end

   def create_backers
     backer =
   end



  def run
    some_function_to_run
  end




end

Seed.run
