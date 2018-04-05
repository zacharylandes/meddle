class Backer < ApplicationRecord
  belongs_to :user
    has_many :daters, through: :dater_backers
end
