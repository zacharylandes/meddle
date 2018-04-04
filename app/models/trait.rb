class Trait < ApplicationRecord
  belongs_to :user

<<<<<<< HEAD
  enum body_type: [:any, :athletic, :average, :beefy, :curvy, :extra_curvy, :large, :slender], _prefix: true
  enum smoker: [:never, :socially, :smoker], _prefix: true
  enum alcohol: [:never, :socially, :drinker], _prefix: true
  # religiosity -- just self rate 1-3, where 0 is no pref
  # politicalness -- just self rate 1-3, where 0 is no pref
  enum has_pets: [ :none, :dog, :cat, :other, :allergeric], _prefix: true
  enum orientation: [:straight, :queer], _prefix: true
  enum gender: [:male, :female, :non_binary], _prefix: true


=======
>>>>>>> 550c753ee7adf8164217688ff9be2a2a467d7de5
  
end
