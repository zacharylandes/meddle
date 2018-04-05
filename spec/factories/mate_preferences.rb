FactoryBot.define do
  factory :mate_preference do

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
    gender 1
  end
end
