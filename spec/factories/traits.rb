FactoryBot.define do
  factory :trait do
<<<<<<< HEAD
    user 1
    height 70
    smoker 1
    alcohol 1
    ethnicity "unknown"
    education "Higher Education"
    body_type 0
    occupation "I Work"
    zip 80210
    religion "Some Religion"
    religiosity 2
    political_leaning 2
    politicalness 1
    has_kids false
    wants_kids false
    has_pets 0
    orientation 1
    gender 2
    other "Some other preference that they really need to say"
=======
    user nil
    height 1
    smoker 1
    alcohol 1
    ethnicity "MyString"
    education "MyString"
    body_type 1
    occupation "MyString"
    zip 1
    religion "MyString"
    religiosity 1
    political_leaning 1
    politicalness 1
    has_kids false
    wants_kids false
    has_pets false
    orientation 1
    gender 1
    other "MyText"
>>>>>>> 550c753ee7adf8164217688ff9be2a2a467d7de5
  end
end
