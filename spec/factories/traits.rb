FactoryBot.define do
  factory :trait do

    height 70
    smoker 1
    alcohol 1
    education "Higher Education"
    body_type 0
    occupation "I Work"
    zip 80203
    religiosity 2
    political_leaning 2
    politicalness 1
    has_kids false
    wants_kids false
    has_pets 0
    orientation 1
    gender 2
    other "Some other preference that they really need to say"

  end
end
