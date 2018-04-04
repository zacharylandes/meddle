class Comment < ApplicationRecord
  belongs_to :dater_backer

  validates_presence_of :comment
end
