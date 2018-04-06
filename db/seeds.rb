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

  def run

    user_1 = User.create!( id: 100, provider: "google_oauth2", uid: "12345", auth_name: "Susie", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Susie", l_name:"Smith", email: "email1@email.com")
    dater_1 = Dater.create!(id: user_1.id, user_id: user_1.id,f_name: user_1.f_name, l_name: user_1.l_name)
    backer_1 = Backer.create!(id: user_1.id, user_id: user_1.id, f_name: user_1.f_name, l_name: user_1.l_name)


    user_2 = User.create!( id: 200, provider: "google_oauth2", uid: "123456", auth_name: "Bobby", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Bobby", l_name:"Johnson", email: "email2@email.com")
    dater_2 = Dater.create!(id: user_2.id, user_id: user_2.id,f_name: user_2.f_name, l_name: user_2.l_name)
    backer_2 = Backer.create!(id: user_2.id, user_id: user_2.id, f_name: user_2.f_name, l_name: user_2.l_name)


    user_3 = User.create!( id: 300, provider: "google_oauth2", uid: "123457", auth_name: "Billy", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Billy", l_name:"Hall", email: "email3@email.com")
    dater_3 = Dater.create!(id: user_3.id, user_id: user_3.id,f_name: user_3.f_name, l_name: user_3.l_name)
    backer_3 = Backer.create!(id: user_3.id, user_id: user_3.id, f_name: user_3.f_name, l_name: user_3.l_name)


    user_4 = User.create!( id: 400, provider: "google_oauth2", uid: "123458", auth_name: "Molly", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Molly", l_name:"Miller", email: "email4@email.com")
    dater_4 = Dater.create!(id: user_4.id, user_id: user_4.id,f_name: user_4.f_name, l_name: user_4.l_name)
    backer_4 = Backer.create!(id: user_4.id, user_id: user_4.id, f_name: user_4.f_name, l_name: user_4.l_name)


    user_5 = User.create!( id: 500, provider: "google_oauth2", uid: "123459", auth_name: "Mr.Match", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Mister", l_name:"Match", email: "email4@email.com")
    dater_5 = Dater.create!(id: user_5.id, user_id: user_5.id,f_name: user_5.f_name, l_name: user_5.l_name)
    backer_5 = Backer.create!(id: user_5.id, user_id: user_5.id, f_name: user_5.f_name, l_name: user_5.l_name)

    match = user_5

    dater_1.backers << backer_2
    dater_1.backers << backer_3
    dater_1.backers << backer_4
    dater_2.backers << backer_3
    dater_2.backers << backer_4


    comment_1 = Comment.create!(dater_id: dater_1.id, backer_id: backer_1.id, comment: "this is from the first backer")
    comment_2 = Comment.create!(dater_id: dater_1.id, backer_id: backer_2.id, comment: "this is from SECOND BACKER")
    comment_3 = Comment.create!(dater_id: dater_2.id, backer_id: backer_3.id, comment: "this is from third backer")
    comment_4 = Comment.create(dater_id: dater_2.id, backer_id: backer_4.id, comment: "this is from fourth backer")


    dater_1_traits = Trait.create!(dater_id: dater_1.id, height: 60, smoker: 0, alcohol: 0, ethnicity: 0, education: 0, body_type: 0, occupation: 0, zip: 0, religion: 0, religiosity: 0, political_leaning: 0, politicalness: 0, has_kids: 0, wants_kids: 0, has_pets: 0, orientation: 0, gender: 0, other: 0, created_at: 0, updated_at: 0)

    dater_1_mate_trait = MatePreference.create!(dater_id: dater_1.id, min_height: 60, max_height: 70, smoker: 0, alcohol: 0, ethnicity: 0, education: 0, body_type: 0, zip_radius: 0, religion: 0, religiosity: 0, political_leaning: 0, politicalness: 0, has_kids: 0, wants_kids: 0, has_pets: 0, orientation: 0, gender: 0, created_at: 0, updated_at: 0)


    dater_1_pool = Match.create!(dater_id: dater_1.id, match_id: match.id)


    backer_eval_1 = BackerEval.create!(dater_id: dater_1.id, backer_id: backer_2.id, q_1: "this is an amazing answer about a person")
    backer_eval_1 = BackerEval.create!(dater_id: dater_1.id, backer_id: backer_2.id, q_1: "this is also an amazing answer about a person")
    backer_eval_1 = BackerEval.create!(dater_id: dater_2.id, backer_id: backer_3.id, q_1: "this is also also an amazing answer about a person")

  end

end

Seed.run
