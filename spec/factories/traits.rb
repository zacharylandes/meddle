FactoryBot.define do
  factory :trait do
    user 1
    height 70
    smoker 1
    alcohol 1
    ethnicity "unknown"
    education "Baccalaureate or higher"
    body_type 0
    occupation "MyString"
    zip 80210
    religion "Some Religion"
    religiosity 1
    political_leaning 1
    politicalness 1
    has_kids false
    wants_kids false
    has_pets false
    orientation 1
    gender 1
    other "Some other preference that they really need to say"
  end
end
