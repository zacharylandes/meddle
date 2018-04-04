class MatePreference < ApplicationRecord
  belongs_to :user


enum smoker: [ :never, :socially, :smoker], _prefix: true
enum alcohol: [:never, :socially, :drinker ], _prefix: true, _prefix: true
enum body_type: [:any, :athletic, :average, :beefy, :curvy, :extra_curvy, :large, :slender], _prefix: true # Currently Schema is set to string. May need to change to array.
# religiosity -- just self rate 1-3, where 0 is no pref
# politicalness -- just self rate 1-3, where 0 is no pref
enum wants_kids: [ :any, :has_kids, :no_kids], _prefix: true
enum has_pets: [ :any, :none, :allergeric], _prefix: true
enum orientation: [:straight, :queer], _prefix: true
enum gender: [:male, :female, :non_binary], _prefix: true


end
