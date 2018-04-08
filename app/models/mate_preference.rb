class MatePreference < ApplicationRecord
  belongs_to :dater

  enum smoker: [ :never, :socially, :smoker], _prefix: true
  enum alcohol: [:never, :socially, :drinker ], _prefix: true
  enum body_type: [:any, :athletic, :average, :beefy, :curvy, :extra_curvy, :large, :slender], _prefix: true # Currently Schema is set to string. May need to change to array.
  enum religiosity: [:no_preference, :occasionally, :devout]
  enum politicalness: [:dont_care, :why_are_we_talking_about_this, :politics_its_a_thing, :lets_do_this]
  enum political_leaning: [:not_important, :bernie_is_my_homeboy, :left_leaning, :centrist,:conservative, :dubya_is_a_commie]
  enum wants_kids: [ :doesnt_matter, :wants_them, :do_not_want_them], _prefix: true
  enum has_pets: [ :dont_care, :none, :allergeric], _prefix: true
  enum orientation: [:straight, :queer, :its_complicated], _prefix: true
  enum gender: [:male, :female, :non_binary], _prefix: true
  enum religion: [:Christian,:Buddhist,:Jewish,:Muslim,:Catholic,:other ], _prefix: true

## still missing religion and ethnicity

  def inches_feet(inches)
    mod = inches%12
    inch = mod.to_s.split('')
      if inch.length == 1 
        inch.unshift('0')
      end
      inch = inch.join('')
    p "#{inches/12}ft #{inch}in"
  end

  def feet_inches(string)
    nums = string.tr('^0-9', '')
    nums = nums.split('')
    ft = (nums.shift.to_i * 12)
    inch = nums.join('').to_i 
    p inch + ft
  end

end
