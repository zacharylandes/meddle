class Trait < ApplicationRecord
  belongs_to :dater
  
  enum smoker: [:never, :socially, :smoker], _prefix: true
  enum alcohol: [:never, :socially, :drinker ], _prefix: true
  enum body_type: [:any, :athletic, :average, :beefy, :curvy, :extra_curvy, :large, :slender], _prefix: true # Currently Schema is set to string. May need to change to array.
  enum religiosity: [:no_preference, :occasionally, :devout]
  enum politicalness: [:dont_care, :why_are_we_talking_about_this, :politics_its_a_thing, :lets_do_this]
  enum political_leaning: [:not_important, :bernie_is_my_homeboy, :left_leaning, :centrist,:conservative, :dubya_is_a_commie]
  enum orientation: [:straight, :queer, :its_complicated], _prefix: true
  enum gender: [:male, :female, :non_binary], _prefix: true
  enum religion: [:Christian,:Buddhist,:Jewish,:Muslim,:Catholic,:other ], _prefix: true
  enum ethnicity: [:Caucasian,:African_American,:Asian,:Hapa,:Other,:Decline ], _prefix: true
end
