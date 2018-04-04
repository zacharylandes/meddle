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

    dater_1 = User.create!(provider: "google_oauth2", uid: "12345", name: "Susie", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Susie", l_name:"Smith", email: "email1@email.com", image1: nil, image2: nil)

    dater_2 = User.create!(provider: "google_oauth2", uid: "123456", name: "Bobby", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Bobby", l_name:"Johnson", email: "email2@email.com", image1: nil, image2: nil)

    dater_3 = User.create!(provider: "google_oauth2", uid: "123457", name: "Billy", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Billy", l_name:"Hall", email: "email3@email.com", image1: nil, image2: nil)

    dater_4 = User.create!(provider: "google_oauth2", uid: "123458", name: "Molly", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Molly", l_name:"Miller", email: "email4@email.com", image1: nil, image2: nil)

    match_1 = User.create!(provider: "google_oauth2", uid: "123459", name: "Mr.Match", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Mister", l_name:"Match", email: "email4@email.com", image1: nil, image2: nil)


    backer_1 = dater_2
    backer_2 = dater_3
    backer_3 = dater_4

    db_1 = DaterBacker.create( dater_id: dater_1.id, backer_id: backer_1.id, relationship: "friend")
    db_2 = DaterBacker.create( dater_id: dater_1.id, backer_id: backer_2.id, relationship: "cousin")
    db_3 = DaterBacker.create( dater_id: dater_1.id, backer_id: backer_3.id, relationship: "friend")


    comment_1 = Comment.create(dater_backer_id: db_1.id, comment: "Susie is the Dater for this DB, and Bobby is the backer!")
    comment_2 = Comment.create(dater_backer_id: db_1.id, comment: "This is another test comment. Susie is the Dater for this DB, and Bobby is the backer!")
    comment_3 = Comment.create(dater_backer_id: db_2.id, comment: "Susie is the Dater for this DB, and Billy is the backer!")
    comment_4 = Comment.create(dater_backer_id: db_3.id, comment: "Susie is the Dater for this DB, and Molly is the backer!")

    dater_1_traits = Trait.create(user_id: dater_1.id, height: 60, smoker: 0, alcohol: 0, ethnicity: 0, education: 0, body_type: 0, occupation: 0, zip: 0, religion: 0, religiosity: 0, political_leaning: 0, politicalness: 0, has_kids: 0, wants_kids: 0, has_pets: 0, orientation: 0, gender: 0, other: 0, created_at: 0, updated_at: 0)

    dater_1_mate_trait = MatePreference.create(user_id: dater_1.id, min_height: 60, max_height: 70, smoker: 0, alcohol: 0, ethnicity: 0, education: 0, body_type: 0, zip_radius: 0, religion: 0, religiosity: 0, political_leaning: 0, politicalness: 0, has_kids: 0, wants_kids: 0, has_pets: 0, orientation: 0, gender: 0, created_at: 0, updated_at: 0)


    dater_1_pool = Pool.create(dater_id: dater_1.id, match_id: match_1.id)


    backer_eval_1 = BackerEval.create(dater_backer_id: db_1.id, q_1: "this is an amazing answer about a person")
    backer_eval_1 = BackerEval.create(dater_backer_id: db_2.id, q_1: "this is also an amazing answer about a person")
    backer_eval_1 = BackerEval.create(dater_backer_id: db_3.id, q_1: "this is also also an amazing answer about a person")

  end




end

Seed.run
