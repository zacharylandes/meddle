class Dater < ApplicationRecord
  belongs_to :user
  has_many :dater_backers
  has_many :backers, through: :dater_backers
  has_many :matches
  has_many :comments
  has_many :personalities
  has_many :images
  
  has_one :trait
  has_many :backer_evals
  has_one :mate_preference

  def pool
    matches.map do |match|
        Dater.where(id: match.match_id)
    end  
  end
  
  def personality_avg(trait)
   traits= self.personalities.pluck(trait).compact
   if traits.sum > 0
    (traits.sum/traits.length) *20
   else
    0 
   end
  end

end
