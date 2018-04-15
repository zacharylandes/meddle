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

    shots = ['https://s3.amazonaws.com/pytdating/p2.jpeg','https://s3.amazonaws.com/pytdating/p4.jpeg','https://s3.amazonaws.com/pytdating/p1.jpeg','https://s3.amazonaws.com/pytdating/p7.jpeg','https://s3.amazonaws.com/pytdating/p12.jpeg','https://s3.amazonaws.com/pytdating/p13.jpeg']

    user_1 = User.create!( id: 100, provider: "google_oauth2", uid: "12345", auth_name: "Susie", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Susie", l_name:"Smith", email: "email1@email.com", remote_image_url: shots[0] )
    dater_1 = Dater.create!(id: user_1.id, user_id: user_1.id,f_name: user_1.f_name, l_name: user_1.l_name)
    backer_1 = Backer.create!(id: user_1.id, user_id: user_1.id, f_name: user_1.f_name, l_name: user_1.l_name)


    user_2 = User.create!( id: 200, provider: "google_oauth2", uid: "123456", auth_name: "Bobby", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Bobby", l_name:"Johnson", email: "email2@email.com", remote_image_url: shots[1] )
    dater_2 = Dater.create!(id: user_2.id, user_id: user_2.id,f_name: user_2.f_name, l_name: user_2.l_name)
    backer_2 = Backer.create!(id: user_2.id, user_id: user_2.id, f_name: user_2.f_name, l_name: user_2.l_name)


    user_3 = User.create!( id: 300, provider: "google_oauth2", uid: "123457", auth_name: "Billy", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Billy", l_name:"Hall", email: "email3@email.com", remote_image_url: shots[2] )
    dater_3 = Dater.create!(id: user_3.id, user_id: user_3.id,f_name: user_3.f_name, l_name: user_3.l_name)
    backer_3 = Backer.create!(id: user_3.id, user_id: user_3.id, f_name: user_3.f_name, l_name: user_3.l_name)


    user_4 = User.create!( id: 400, provider: "google_oauth2", uid: "123458", auth_name: "Molly", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Molly", l_name:"Miller", email: "email4@email.com", remote_image_url: shots[3] )
    dater_4 = Dater.create!(id: user_4.id, user_id: user_4.id,f_name: user_4.f_name, l_name: user_4.l_name)
    backer_4 = Backer.create!(id: user_4.id, user_id: user_4.id, f_name: user_4.f_name, l_name: user_4.l_name)


    user_5 = User.create!( id: 500, provider: "google_oauth2", uid: "123459", auth_name: "Mr.Match", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Jack", l_name:"Jorgen", email: "email5@email.com", remote_image_url: shots[4] )
    dater_5 = Dater.create!(id: user_5.id, user_id: user_5.id,f_name: user_5.f_name, l_name: user_5.l_name)
    backer_5 = Backer.create!(id: user_5.id, user_id: user_5.id, f_name: user_5.f_name, l_name: user_5.l_name)


    user_6 = User.create!( id: 600, provider: "google_oauth2", uid: "123439", auth_name: "Mr.Match", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Back", l_name:"Borgen", email: "email6@email.com", remote_image_url: shots[5] )
    dater_6 = Dater.create!(id: user_6.id, user_id: user_6.id,f_name: user_6.f_name, l_name: user_6.l_name)
    backer_6 = Backer.create!(id: user_6.id, user_id: user_6.id, f_name: user_6.f_name, l_name: user_6.l_name)

    user_7 = User.create!( id: 700, provider: "google_oauth2", uid: "123359", auth_name: "Mr.Match", oauth_token: "tokenhere", oauth_expires_at: "2018-04-04 20:19:18", created_at: "2018-04-04 19:19:19", updated_at: "2018-04-04 19:19:19", f_name: "Stack", l_name:"Steiner", email: "email7@email.com", remote_image_url: shots[3] )
    dater_7 = Dater.create!(id: user_7.id, user_id: user_7.id,f_name: user_7.f_name, l_name: user_7.l_name)
    backer_7 = Backer.create!(id: user_7.id, user_id: user_7.id, f_name: user_7.f_name, l_name: user_7.l_name)



    q1= Question.create(question: "What's their favorite panda ")
    q2= Question.create(question: "What are they eating right now")
    q3= Question.create(question: "Are they funny, actually?")
    q4= Question.create(question: "Their least favorite type of cereal")
    q5= Question.create(question: "Childhood candy bar")
    
    Personality.create(dater_id:dater_1.id,backer_id:backer_2.id, charitable:2,intelligent:4,shy: 2,spontaneous:1,funny: 4,adaptable:1,logical:4,independent:4,organized:5,relaxed:1,friendly:5,energetic:2,silly:2,patient:4 )
    Personality.create(dater_id:dater_2.id,backer_id:backer_2.id, charitable:1,intelligent:4,shy: 3,spontaneous:2,funny: 4,adaptable:1,logical:4,independent:3,organized:3,relaxed:4,friendly:5,energetic:2,silly:2,patient:4 )
    Personality.create(dater_id:dater_3.id,backer_id:backer_2.id, charitable:2,intelligent:3,shy: 2,spontaneous:5,funny: 4,adaptable:1,logical:3,independent:1,organized:2,relaxed:5,friendly:5,energetic:4,silly:2,patient:4 )
    Personality.create(dater_id:dater_4.id,backer_id:backer_2.id, charitable:3,intelligent:2,shy: 3,spontaneous:6,funny: 4,adaptable:4,logical:2,independent:2,organized:2,relaxed:6,friendly:1,energetic:5,silly:2,patient:4 )
    Personality.create(dater_id:dater_5.id,backer_id:backer_2.id, charitable:4,intelligent:2,shy: 2,spontaneous:4,funny: 3,adaptable:4,logical:5,independent:2,organized:3,relaxed:3,friendly:1,energetic:6,silly:2,patient:4 )
    Personality.create(dater_id:dater_6.id,backer_id:backer_2.id, charitable:5,intelligent:4,shy: 2,spontaneous:3,funny: 2,adaptable:4,logical:1,independent:2,organized:5,relaxed:1,friendly:5,energetic:2,silly:2,patient:4 )
    Personality.create(dater_id:dater_7.id,backer_id:backer_2.id, charitable:3,intelligent:1,shy: 2,spontaneous:2,funny: 1,adaptable:4,logical:3,independent:4,organized:5,relaxed:1,friendly:5,energetic:2,silly:2,patient:4 )

    Comment.create(dater_id:dater_7.id,backer_id:backer_2.id,question_id:1, comment:"trash pandas")
    Comment.create(dater_id:dater_7.id,backer_id:backer_2.id,question_id:2, comment:"they're eating dem naners")
    Comment.create(dater_id:dater_7.id,backer_id:backer_2.id,question_id:3, comment:"super duper funz")
    Comment.create(dater_id:dater_7.id,backer_id:backer_2.id,question_id:4, comment:"marshy cereal")
    Comment.create(dater_id:dater_7.id,backer_id:backer_2.id,question_id:5, comment:"twix")
    Comment.create(dater_id:dater_6.id,backer_id:backer_1.id,question_id:1, comment:"trash pandas")
    Comment.create(dater_id:dater_6.id,backer_id:backer_1.id,question_id:2, comment:"trash pandas")
    Comment.create(dater_id:dater_6.id,backer_id:backer_1.id,question_id:3, comment:"trash pandas")
    Comment.create(dater_id:dater_6.id,backer_id:backer_4.id,question_id:4, comment:"trash pandas")
    Comment.create(dater_id:dater_6.id,backer_id:backer_5.id,question_id:5, comment:"trash pandas")
    Comment.create(dater_id:dater_5.id,backer_id:backer_6.id,question_id:1, comment:"trash pandas")
    Comment.create(dater_id:dater_5.id,backer_id:backer_7.id,question_id:2, comment:"trash pandas")
    Comment.create(dater_id:dater_5.id,backer_id:backer_3.id,question_id:3, comment:"trash pandas")
    Comment.create(dater_id:dater_5.id,backer_id:backer_2.id,question_id:4, comment:"trash pandas")
    Comment.create(dater_id:dater_5.id,backer_id:backer_2.id,question_id:5, comment:"trash pandas")
    Comment.create(dater_id:dater_4.id,backer_id:backer_2.id,question_id:1, comment:"trash pandas")
    Comment.create(dater_id:dater_4.id,backer_id:backer_2.id,question_id:2, comment:"trash pandas")
    Comment.create(dater_id:dater_4.id,backer_id:backer_2.id,question_id:3, comment:"trash pandas")
    
    match = user_5

    dater_1.backers << backer_2
    dater_1.backers << backer_3
    dater_1.backers << backer_4
    dater_2.backers << backer_3
    dater_2.backers << backer_4


    # comment_1 = Comment.create!(dater_id: dater_1.id, backer_id: backer_1.id, comment: "this is from the first backer")
    # comment_2 = Comment.create!(dater_id: dater_1.id, backer_id: backer_2.id, comment: "this is from SECOND BACKER")
    # comment_3 = Comment.create!(dater_id: dater_2.id, backer_id: backer_3.id, comment: "this is from third backer")
    # comment_4 = Comment.create(dater_id: dater_2.id, backer_id: backer_4.id, comment: "this is from fourth backer")


    dater_1_traits = Trait.create!(dater_id: dater_1.id, height: 60, smoker: 0, alcohol: 0, ethnicity: 0, education: true, body_type: 0, occupation: 0, zip: 80203, religion: 0, religiosity: 1, political_leaning: 2, politicalness: 3, has_kids: false, wants_kids: false, has_pets: false, orientation: 1, gender: 1, other: "", created_at: 0, updated_at: 0)
    dater_2_traits = Trait.create!(dater_id: dater_2.id, height: 60, smoker: 0, alcohol: 2, ethnicity: 2, education: true, body_type: 0, occupation: 0, zip: 80203, religion: 2, religiosity: 1, political_leaning: 2, politicalness: 2, has_kids: false, wants_kids: false, has_pets: false, orientation: 2, gender: 2, other: "", created_at: 0, updated_at: 0)
    dater_3_traits = Trait.create!(dater_id: dater_3.id, height: 60, smoker: 0, alcohol: 2, ethnicity: 2, education: true, body_type: 0, occupation: 0, zip: 80203, religion: 2, religiosity: 1, political_leaning: 4, politicalness: 1, has_kids: false, wants_kids: false, has_pets: false, orientation: 1, gender: 0, other: "", created_at: 0, updated_at: 0)
    dater_4_traits = Trait.create!(dater_id: dater_4.id, height: 60, smoker: 0, alcohol: 0, ethnicity: 2, education: true, body_type: 0, occupation: 0, zip: 80203, religion: 2, religiosity: 0, political_leaning: 4, politicalness: 0, has_kids: false, wants_kids: false, has_pets: false, orientation: 2, gender: 0, other: "", created_at: 0, updated_at: 0)
    dater_5_traits = Trait.create!(dater_id: dater_5.id, height: 60, smoker: 0, alcohol: 2, ethnicity: 2, education: true, body_type: 0, occupation: 0, zip: 80203, religion: 2, religiosity: 1, political_leaning: 2, politicalness: 1, has_kids: false, wants_kids: false, has_pets: false, orientation: 2, gender: 2, other: "", created_at: 0, updated_at: 0)
    dater_6_traits = Trait.create!(dater_id: dater_6.id, height: 60, smoker: 0, alcohol: 1, ethnicity: 0, education: true, body_type: 0, occupation: 0, zip: 80203, religion: 1, religiosity: 1, political_leaning: 4, politicalness: 2, has_kids: false, wants_kids: false, has_pets: false, orientation: 1, gender: 0, other: "", created_at: 0, updated_at: 0)
    dater_7_traits = Trait.create!(dater_id: dater_7.id, height: 60, smoker: 0, alcohol: 0, ethnicity: 2, education: true, body_type: 0, occupation: 0, zip: 80203, religion: 4, religiosity: 2, political_leaning: 4, politicalness: 0, has_kids: false, wants_kids: false, has_pets: false, orientation: 0, gender: 0, other: "", created_at: 0, updated_at: 0)


    dater_1_mate_trait = MatePreference.create!(dater_id: dater_1.id, min_height: 60, max_height: 70, smoker: 0, alcohol: 0, ethnicity: 0, education: 0, body_type: 0, zip_radius: 4, religion: 0, religiosity: 0, political_leaning: 0, politicalness: 0, has_kids: false, wants_kids: false, has_pets: false, orientation: 0, gender: 0, created_at: 0, updated_at: 0)
    dater_2_mate_trait = MatePreference.create!(dater_id: dater_2.id, min_height: 60, max_height: 70, smoker: 0, alcohol: 0, ethnicity: 0, education: 0, body_type: 0, zip_radius: 20, religion: 0, religiosity: 2, political_leaning: 2, politicalness: 3, has_kids: false, wants_kids: false, has_pets: false, orientation: 0, gender: 0, created_at: 0, updated_at: 0)
    dater_3_mate_trait = MatePreference.create!(dater_id: dater_3.id, min_height: 60, max_height: 70, smoker: 1, alcohol: 0, ethnicity: 0, education: 0, body_type: 2, zip_radius: 20, religion: 0, religiosity: 2, political_leaning: 2, politicalness: 2, has_kids: false, wants_kids: false, has_pets: false, orientation: 0, gender: 0, created_at: 0, updated_at: 0)
    dater_4_mate_trait = MatePreference.create!(dater_id: dater_4.id, min_height: 60, max_height: 70, smoker: 1, alcohol: 2, ethnicity: 0, education: 0, body_type: 2, zip_radius: 10, religion: 0, religiosity: 2, political_leaning: 3, politicalness: 3, has_kids: false, wants_kids: false, has_pets: false, orientation: 0, gender: 0, created_at: 0, updated_at: 0)
    dater_5_mate_trait = MatePreference.create!(dater_id: dater_5.id, min_height: 60, max_height: 70, smoker: 1, alcohol: 2, ethnicity: 0, education: 0, body_type: 3, zip_radius: 15, religion: 0, religiosity: 1, political_leaning: 1, politicalness: 2, has_kids: false, wants_kids: false, has_pets: false, orientation: 0, gender: 0, created_at: 0, updated_at: 0)
    dater_6_mate_trait = MatePreference.create!(dater_id: dater_6.id, min_height: 60, max_height: 70, smoker: 1, alcohol: 2, ethnicity: 0, education: 0, body_type: 1, zip_radius: 15, religion: 0, religiosity: 0, political_leaning: 2, politicalness: 1, has_kids: false, wants_kids: false, has_pets: false, orientation: 0, gender: 0, created_at: 0, updated_at: 0)
    dater_7_mate_trait = MatePreference.create!(dater_id: dater_7.id, min_height: 60, max_height: 70, smoker: 0, alcohol: 0, ethnicity: 0, education: 0, body_type: 0, zip_radius: 5, religion: 0, religiosity: 0, political_leaning: 1, politicalness: 3, has_kids: false, wants_kids: false, has_pets: false, orientation: 0, gender: 0, created_at: 0, updated_at: 0)


    dater_1_pool = Match.create!(dater_id: dater_1.id, match_id: match.id)


    # backer_eval_1 = BackerEval.create!(dater_id: dater_1.id, backer_id: backer_2.id, q_1: "this is an amazing answer about a person")
    # backer_eval_1 = BackerEval.create!(dater_id: dater_1.id, backer_id: backer_2.id, q_1: "this is also an amazing answer about a person")
    # backer_eval_1 = BackerEval.create!(dater_id: dater_2.id, backer_id: backer_3.id, q_1: "this is also also an amazing answer about a person")

  end

end

Seed.run
