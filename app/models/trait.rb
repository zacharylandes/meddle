class Trait < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD

<<<<<<< HEAD
  
=======
>>>>>>> Adds all models except backer_evals
=======
  enum body_type %w(any athletic average beefy curvy extra_curvy large slender)
  enum smoker %w(never socially smoker)
  enum alcohol %w(never socially drinker )
  # religiosity -- just self rate 1-3, where 0 is no pref
  # politicalness -- just self rate 1-3, where 0 is no pref
  enum has_pets ( "none", "dog(s)" , "cats(s)", "other", "allergeric")
  enum orientation %w(straight queer)
  enum column %w(male female non_binary)
>>>>>>> added enums
end
