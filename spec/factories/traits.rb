FactoryBot.define do
  factory :trait do
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
  end
end
