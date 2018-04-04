FactoryBot.define do
  factory :mate_preference do
<<<<<<< HEAD
    user 1
    min_height 60
    max_height 70
    smoker 1
    alcohol 0
    ethnicity "unknown"
    education false
    # body_type ["curvy", "beefy", "slender"]
    zip_radius 25
    religion "Some Religion"
    religiosity 1
    political_leaning 0
    politicalness 1
    has_kids true
    wants_kids 1
    has_pets 0
    orientation 0
=======
    user nil
    min_height 1
    max_height 1
    smoker 1
    alcohol 1
    ethnicity "MyString"
    education false
    body_type "MyString"
    zip_radius 1
    religion "MyString"
    religiosity 1
    political_leaning 1
    politicalness 1
    has_kids false
    wants_kids 1
    has_pets 1
    orientation 1
>>>>>>> 550c753ee7adf8164217688ff9be2a2a467d7de5
    gender 1
  end
end
