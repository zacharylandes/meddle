class Personality < ApplicationRecord
  belongs_to :dater
  belongs_to :backer

  def self.traits
    [:charitable,:intelligent,:shy,:spontaneous,:funny,:adaptable,:confident,:logical,:independent,:organized,:relaxed,:friendly,:energetic,:silly,:patient]
  end

end
