class Dater < ApplicationRecord
  belongs_to :user
  has_many :backers, through: :dater_backers
  has_many :daters, through: :matches #has_many datees???


end
