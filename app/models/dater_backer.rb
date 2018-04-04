class DaterBacker < ApplicationRecord

  belongs_to :dater, class_name: "User"
  belongs_to :backer, class_name: "User"

  has_many :comments
  # has_many :backer_evals

end
