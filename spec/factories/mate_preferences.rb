FactoryBot.define do
  factory :mate_preference do

    min_height 60
    max_height 70
    smoker 1
    alcohol 0
    education false
    zip_radius 25
    religiosity 1
    political_leaning 0
    politicalness 1
    has_kids true
    wants_kids 1
    has_pets 0
    orientation 0
    gender 1
  end
end
