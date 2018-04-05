class Dater < ApplicationRecord
  belongs_to :user
  has_many :backers, through: :dater_backers

  
end
