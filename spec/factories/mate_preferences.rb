FactoryBot.define do
  factory :mate_preference do
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
    gender 1
  end
end
