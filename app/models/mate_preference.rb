class MatePreference < ApplicationRecord
  belongs_to :user

enum smoker %w(never socially smoker)
enum alcohol %w(never socially drinker )
enum body_type %w(any athletic average beefy curvy extra_curvy large slender) # Currently Schema is set to string. May need to change to array.
# religiosity -- just self rate 1-3, where 0 is no pref
# politicalness -- just self rate 1-3, where 0 is no pref
enum wants_kids ( any has_kids no_kids)
enum has_pets ( "any", "none", "allergeric")
enum orientation %w(straight queer)
enum column %w(male female non_binary)


end
