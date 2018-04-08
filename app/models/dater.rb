class Dater < ApplicationRecord
  belongs_to :user
  has_many :dater_backers
  has_many :backers, through: :dater_backers
  has_many :matches
  has_many :comments
  has_one :trait
  has_many :backer_evals
  has_one :mate_preference

def pool
  matches.map do |match|
      Dater.where(id: match.match_id)
  end  
end

end
