

class Seed
  def self.run
    new.run
  end

  def run
    shots = [
        'https://s3.amazonaws.com/pytdating/p2.jpeg',
        'https://s3.amazonaws.com/pytdating/p4.jpeg',
        'https://s3.amazonaws.com/pytdating/p1.jpeg',
        'https://s3.amazonaws.com/pytdating/p30.jpeg',
        'https://s3.amazonaws.com/pytdating/p33.jpeg',
        'https://s3.amazonaws.com/pytdating/p34.jpeg',
        'https://s3.amazonaws.com/pytdating/p7.jpeg',
        'https://s3.amazonaws.com/pytdating/p12.jpeg',
        'https://s3.amazonaws.com/pytdating/p13.jpeg',
        'https://s3.amazonaws.com/pytdating/p100.jpeg',
        'https://s3.amazonaws.com/pytdating/p200.jpeg',
        'https://s3.amazonaws.com/pytdating/p300.jpeg',
        'https://s3.amazonaws.com/pytdating/p34.jpeg' ]
    
    Question.create(question: "What's their favorite panda")
    Question.create(question: "What are they eating right now")
    Question.create(question: "Are they funny, actually?")
    Question.create(question: "Their least favorite type of cereal")
    Question.create(question: "Childhood candy bar")
    Question.create(question: "What did they want to be when they grew up")
    Question.create(question: "What's their password?")

    50.times do
      user = User.create(
        provider: "google_oauth2", 
        uid: "12345", 
        auth_name: "#{Faker::Cat.name}", 
        oauth_token: "tokenhere", 
        oauth_expires_at: "2018-04-04 20:19:18", 
        created_at: "2018-04-04 19:19:19", 
        updated_at: "2018-04-04 19:19:19", 
        f_name: "#{Faker::Cat.name}", 
        l_name:"#{Faker::Dog.name}", 
        email: "email1@email.com", 
        remote_image_url: shots.sample )

      dater = Dater.create( 
        user_id: user.id, 
        f_name: user.f_name, 
        l_name: user.l_name)

      backer = Backer.create(
        user_id: user.id, 
        f_name: user.f_name, 
        l_name: user.l_name)

      Trait.create(     
        dater_id: dater.id,
        height: 60, 
        smoker: (0..3).to_a.sample, 
        alcohol:(0..3).to_a.sample,
        ethnicity:(0..3).to_a.sample,
        education: true, 
        body_type:(0..3).to_a.sample,
        occupation:(0..3).to_a.sample,
        zip: 80203, 
        religion:(0..3).to_a.sample, 
        religiosity: (0..2).to_a.sample,
        political_leaning: (0..3).to_a.sample, 
        politicalness: (0..3).to_a.sample,
        has_kids: false,
        wants_kids: false,
        has_pets: false, 
        orientation: (0..3).to_a.sample, 
        gender: (0..3).to_a.sample, 
        other: "", 
        created_at:(0..3).to_a.sample, 
        updated_at:(0..3).to_a.sample)        
    end

    
    (2..49).each do |n|
      Personality.create(
        dater_id:Dater.find(n).id,
        backer_id:Backer.find(n-1).id, 
        charitable:(0..5).to_a.sample,
        intelligent:(0..5).to_a.sample,
        shy: (0..5).to_a.sample,
        spontaneous:(0..5).to_a.sample,
        funny: (0..5).to_a.sample,
        adaptable:(0..5).to_a.sample,
        logical:(0..4).to_a.sample,
        independent:(0..5).to_a.sample,
        organized:(0..5).to_a.sample,
        relaxed:(0..5).to_a.sample,
        friendly:(0..5).to_a.sample,
        energetic:(0..5).to_a.sample,
        silly:(0..5).to_a.sample,
        patient:(0..5).to_a.sample)

    (1..5).each do |x|
      Comment.create( 
        dater_id: Dater.find(n).id, 
        backer_id: Backer.find(n-1).id, 
        question_id: x, 
        comment:"#{Faker::MostInterestingManInTheWorld.quote}")
    end

      MatePreference.create( 
        dater_id: Dater.find(n).id, 
        min_height: 60, 
        max_height: 70, 
        smoker: (0..3).to_a.sample, 
        alcohol: (0..3).to_a.sample, 
        ethnicity: (0..3).to_a.sample, 
        education: (0..3).to_a.sample, 
        body_type: (0..3).to_a.sample, 
        zip_radius: 4, religion: (0..3).to_a.sample, 
        religiosity: (0..2).to_a.sample, 
        political_leaning: (0..3).to_a.sample, 
        politicalness: (0..3).to_a.sample, 
        has_kids: false, 
        wants_kids: false, 
        has_pets: false, 
        orientation: (0..2).to_a.sample, 
        gender: (0..2).to_a.sample, 
        created_at: (0..3).to_a.sample, 
        updated_at: (0..3).to_a.sample)
    end
  end
end

Seed.run
