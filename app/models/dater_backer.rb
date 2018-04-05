class DaterBacker < ApplicationRecord
  belongs_to :backer
  belongs_to :dater

  has_many :comments



end
